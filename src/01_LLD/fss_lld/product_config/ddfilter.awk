#	awk source %name: ddfilter.awk %
#
# Filter all input files passed with a like-C stile preprocessor to the stdout
# environment variables:
# DEFS_LINE defines values
# DEFS_FILES defines definitions C files names (.h)
# TAB_NAME is tab files name to rename 'name' and 'function'
# TAB_BYPASS is tab files name to rename 'bypass'
# PRINT_COMMENT=y let printing of comment (#) and empty lines
# LOG=<log_file> log substitutions
# Conditions rows are correctly interpreted even with additional line
# termination (CR + LF); other line are passed as is.
# Macros are recursively substituted and checked at their use
# Rename tabs are two column tab: "search value" / "new value"
# Exit codes:
#	0 = Succesfull
#	1 = Error managing a DEFS_FILES, TAB_NAME or TAB_BYPASS file.
#	2 = Error in a definition in DEFS_LINE.
#	3 = Error reading ".dd" file.
#	4 = Error in controlling a condition.
#	5 = Bypass undefined.
#	6 = Meet an #error line.

BEGIN \
{
PRINT_COMMENT = ENVIRON["PRINT_COMMENT"]
DEFS_LINE = ENVIRON["DEFS_LINE"]
TAB_BYPASS = ENVIRON["TAB_BYPASS"]
DEFS_FILES = ENVIRON["DEFS_FILES"]
TAB_NAME = ENVIRON["TAB_NAME"]
# Read all the macro definitions into macros["name"]="value"
if (DEFS_LINE != "")
{		# Read macro defined at command line
	n_def = split(DEFS_LINE, line_def)
	for (i = 1; i <= n_def; i++)
	{
		n = split(line_def[i], macro_read, /=/)
		if ( (n > 2) || (macro_read[1] == "") )
		{
			exit_error(10, line_def[i])
		}
		if (n == 1)
		{
			macro_read[2] = ""
		}
		if (macro_read[1] in macros)
			print "ddfilter: macro '" macro_read[1] "' is redefined " | "cat - 1>&2"
		macros[macro_read[1]] = macro_read[2]
	}
}
if (DEFS_FILES != "")
{		# Read macro defined into files
	n_def = split(DEFS_FILES, line_def)
	start_comment = 0
	for (i = 1; i <= n_def; i++)
	{
		ret = getline < line_def[i]
		while (ret > 0)		# ret=0 if EOF: discard empty file
		{
			if (start_comment > 0)
				line = ""
			else
			{
				start_comment = match($(0), /\/\*/)
				if (start_comment == 0)
					line = $(0)
				else	line = substr($(0), 1, RSTART-1)
			}
			if (start_comment > 0)
				if (match($(0), /\*\//) > 0)
				{
					line = line " " substr($(0), RSTART+2)
					start_comment = 0
				}
			if (match(line, /^[[:blank:]]*#[[:blank:]]*define[[:blank:]]+/) > 0)
			{
				macro = substr($(0), RSTART+RLENGTH)
				sub(/[\r\n]?$/, "", macro)	# Correct CR/NL
	# Remove comment after the definition
				comment = index(macro, "/*")
				if (comment > 0)
				{		# Remove trailing C comment
					macro = substr(macro, 1, comment-1)
				}
	# Take out the macro name
				name = match(macro, "[^[:blank:]]+")
				name = substr(macro, 1, RLENGTH)
				macro = substr(macro, RLENGTH+1)
	# Extract the value without trailing and heading blanks
				if (match(macro, "[^[:blank:]]") > 0)
				{
					macro = substr(macro, RSTART)
					value_length = length(macro)
					value_end = match(macro,
								"[[:blank:]]*$")
					value = substr(macro, 1,
							value_length-RLENGTH)
					
				} else
				{
					value = ""
				}
				if (name in macros)
					print "ddfilter: macro '" name "' is redefined " | "cat - 1>&2"
				macros[name] = value
			}
			ret = getline < line_def[i]
		}
		if (ret == -1)		# Read error
			exit_error(1, line_def[i])
		if (close(line_def[i]) != 0)
		{
			exit_error(3, line_def[i])
		}
	}
}
if (TAB_NAME != "")
{		# Read name defined into file
	ret = getline < TAB_NAME
	while (ret > 0)		# ret=0 if EOF: discard empty file
	{
		if ($(3) == "P")
		{
			sub_name_prefix[$(1)] = $(2)
		} else
		{
			if ($(3) == "I")
			{
				sub_name_integer[$(1)] = $(2)
			} else
			{
				exit_error(2, TAB_NAME)
			}
		}
		ret = getline < TAB_NAME
	}
	if (ret == -1)		# Read error
		exit_error(1, TAB_NAME)
	if (close(TAB_NAME) != 0)
	{
		exit_error(3, TAB_NAME)
	}
}
if (TAB_BYPASS != "")
{		# Read name defined into file
	ret = getline < TAB_BYPASS
	while (ret > 0)		# ret=0 if EOF: discard empty file
	{
		sub_bypass[$(1)] = $(2)
		ret = getline < TAB_BYPASS
	}
	if (ret == -1)		# Read error
		exit_error(1, TAB_BYPASS)
	if (close(TAB_BYPASS) != 0)
	{
		exit_error(3, TAB_BYPASS)
	}
}
	# Set common regular expression
search_if = "^if([^[:alnum:]]|$)"		# Fast match of apparent "#if"
search_ok_if = "^if[[:blank:]]*[^[:blank:]]"	# match correct "#if"
simple_op_reg_exp = "[-+*/!=><]|defined"	# match an operator
						# Do not test for "?:" operator
}

# Data line out of any condition
/^[[:blank:]]*([^[:blank:]#]|$)/ \
{
print_line()
next
}

# First level condition or comment line
# Will continue analysis up to this condition end
{
if (stripping_line(0) == 0)
{
	print_line()
	next
}
if (strip_line !~ search_if)
{		# Do not meet a first level "#if"
	if (strip_line ~ /^(elif|else|endif)([^[:alnum:]]|$)/)
	{		# Meet a first level "#elif" or "#else" or "#endif" 
		exit_error(30)
	}
	print_line()
	next
}
if (match(strip_line, search_ok_if) == 0)
{
	exit_error(31)
}
		# Match a first level "#if"
conditional_inclusion(strip_line, 0)
}

# Look for "#..."
# Return 1 if found, 0 otherwise
# Leave in strip_line the rest of the line (the conditional expression)
function stripping_line(no_test)
{
sub(/[\r\n]?$/, "")	# Correct CR/NL
	# Fast, but approximate, condition recognition
if (match($(0), /^[[:blank:]]*#[[:blank:]]*[ie][[:alpha:]]/) == 0)
{		# Line outside any conditions
	return 0
}
	# Leave condition only, without initial "#"
strip_line = substr($(0), RSTART+RLENGTH-2)
if (strip_line ~ /^error([^[:alnum:]]|$)/)
{		# Meet "#error"
	if (no_test == 0)
	{
		exit_error(50)
	}
	return 0
}
# Code commented to avoid recognition of "ifdef" and "ifndef"
#if (match(strip_line, /^ifn?def[[:blank:]\(]/) > 0)
#{		# Explode "ifdef" and "ifndef" with defined operator
#	if (strip_line ~ search_if_def)
#	{
#		strip_line = "if defined"substr(strip_line, RSTART+RLENGTH-1)
#	} else
#	{
#		strip_line = "if !defined"substr(strip_line, RSTART+RLENGTH-1)
#	}
#}
return 1
}

# Analyze recursively from an "#if"
function conditional_inclusion(line, stop, value, endif)
{
if (stop == 0)
{		# RSTART and RLENGTH are from "#if" match
	full_expr = substr(line, RSTART+RLENGTH-1)
	value = split_expression(full_expr)
} else
{		# Already in a false condition
	value = 0
}
do
{
	ret = getline
	if (ret == -1)
	{		# Read error
		exit_error(20)
	}
	if (ret == 0)
	{		# EOF before '#endif'
		exit_error(32)
	}
	new_stop = stop + (value==0)
	if (stripping_line(new_stop) == 0)
	{		# No condition line
		if (value != 0)
		{
			print_line()
		}
		continue
	}
	if (strip_line ~ search_if)
	{
		if (match(strip_line, search_ok_if) == 0)
		{		# "#if" without condition
			exit_error(31)
		}
			# Match "#if"
		conditional_inclusion(strip_line, new_stop)
		continue
	}
	if (strip_line ~ /^el(if|se)([^[:alnum:]]|$)/)
	{		# Match "#elif" or "#else"
		if (strip_line ~ /^elif([^[:blank:]\(!]|$)/)
		{		# "#elif" without condition
			exit_error(31)
		}
		if ( (stop != 0) || (value != 0) )
		{
			stop = 1
			value = 0
		} else
		{
			if (match(strip_line, /^elif/) > 0)
			{		# Match "#elif"
				full_expr = substr(strip_line, RSTART+RLENGTH)
				value = split_expression(full_expr)
				if (value != 0)
				{
					stop = 1
				}
			} else
			{		# Match "#else"
				value = 1
			}
		}
		continue
	}
# Return at "#endif" match
	endif = strip_line ~ /^endif([^[:alnum:]]|$)/
# Do not use "strip_line" in the loop condition because
# it if modified before continue statement
} while (endif == 0)
return
}

# Split expression by parentesis and logical operators '||' and '&&'
# Return its value
function split_expression(expr, len, o_p, p_p)
{
if (match(expr, /defined[[:blank:]]*\([[:blank:]]*/) > 0)
{			# Exception found: "defined ("
	first_break = RSTART
	sub_expr1 = substr(expr, RSTART+RLENGTH)
	if (match(sub_expr1, /[[:blank:]]*\)/) == 0)
		exit_error(33)
	sub_expr2 = substr(sub_expr1, 1, RSTART-1)
	expr = substr(expr, 1, first_break-1) "defined " sub_expr2 \
					substr(sub_expr1, RSTART+RLENGTH)
}
	# Look for a parentesis or logical operator position
o_p = match(expr, /((\|\|)|(&&)|\()/)	# "||", "&&", "("
if (o_p == 0)
{		# Found no one
	return compute(expr)
}
p_p = index(expr, "(")			# Parentesis position
if ( (p_p == 0) || (o_p < p_p) )
{		# The first operator is a logical operator
	sub_expr = substr(expr, 1, o_p-1)
	value = split_expression(sub_expr)
	log_or = (index(expr, "|") == o_p)	# Otherwise is "and"
	if (log_or == (value != 0))
	{		# Expression value is determined from its first operand
		return (value != 0)
	}
		# Continue in computing expression value
	sub_expr = substr(expr, o_p+2)
	return split_expression(sub_expr)
}
	# Look for the corresponding right parentesis
p_l = p_p
p_r = 0
sub_expr = substr(expr, p_p+1)
do
{
	if (match(sub_expr, /[()]/) == 0)
		exit_error(33)
	if (substr(sub_expr, RSTART, 1) == "(")
	{
		sub_expr = substr(sub_expr, RSTART+1)
		p_l += RSTART
	} else	
	{
		sub_expr = substr(sub_expr, 1, RSTART-1)
		p_r = p_l + RSTART
	}
} while (p_r == 0)
		# Parentesized expression
value = split_expression(sub_expr)
		# Separate parts to recognize lack of operators
expr = substr(expr, 1, p_l-1) " " value " " substr(expr, p_r+1)
return split_expression(expr)
}

# Compute the value of a sub-expression
function compute(expr, op, op1_expr, op2, op2_expr, op2_expr_right)
{
if (match(expr, /defined/) > 0)
{
	op1_expr = substr(expr, 1, RSTART-1)
	op2_expr = substr(expr, RSTART+RLENGTH)
	if (match(op2_expr, /^[[:blank:]]+[^[:blank:]]/) > 0)
	{		# Remove leading blanks
		op2_expr = substr(op2_expr, RSTART+RLENGTH-1)
	}
	operand = op2_expr
	if (match(operand, /[^[:blank:]][[:blank:]]+.*$/) > 0)
	{		# Remove trailing blanks
		operand = substr(operand, 1, RSTART)
	}
	if (operand == "")
	{
		exit_error(31)
	}
	match(op2_expr, operand)
	op2_expr = substr(op2_expr, RSTART+RLENGTH)
	value = operand in macros
	return compute(op1_expr value op2_expr)
}
	# Look for operators
if (match(expr, simple_op_reg_exp) == 0)
{		# Simple expression without operators
	return convert(expr)
}
op1_expr = substr(expr, 1, RSTART-1)
op = substr(expr, RSTART, RLENGTH)
if (op ~ /[!<>=]/)
{		# First part op 2 character operator
	new_op = substr(expr, RSTART+1, 1)
	if (new_op ~ /[=<>]/)
	{
		op = op new_op
		RSTART++
	}
}
op2_expr = substr(expr, RSTART+RLENGTH)
if (op == "!")
{
	if (op1_expr ~ /[^[:blank:]]/)
	{
		exit_error(34, op1_expr)
	}
	if (match(op2_expr, /^[[:blank:]]+[^[:blank:]]/) > 0)
	{		# Remove leading blanks
		op2_expr = substr(op2_expr, RSTART+RLENGTH-1)
	}
	operand = op2_expr
	if (match(operand, /[^[:blank:]][[:blank:]]+.*$/) > 0)
	{		# Remove trailing blanks
		operand = substr(operand, 1, RSTART)
	}
	value = !compute(operand)
	match(op2_expr, operand)
	op2_expr_right = substr(op2_expr, RSTART+RLENGTH)
	return compute(value op2_expr_right)

	if (match(op2_expr, /[[:blank:]]/) > 0)
	{
		split_op2_expr = 1
	} else
	{
		if (match(op2_expr, simple_op_reg_exp) > 0)
		{
			split_op2_expr = 1
		} else
		{
			split_op2_expr = 0
		}
	}
	if (split_op2_expr == 1)
	{
		op2_expr_right = substr(op2_expr, RSTART)
		op2_expr = substr(op2_expr, 1, RSTART-1)
	} else
	{
		op2_expr_right = ""
	}
	if (op == "!")
	{
		value = !compute(op2_expr)
	} else
	{	# Operator is "defined"
		
		value = op2_expr in macros
	}
	return compute(value op2_expr_right)
}
if (op2_expr ~ simple_op_reg_exp)
{		# More than one operators
	op2 = compute(op2_expr)
} else
{
	op2 = convert(op2_expr)
}
op1 = convert(op1_expr)
if (op == "+")
{
	return (op1 + op2)
}
if (op == "-")
{
	return (op1 - op2)
}
if (op == "*")
{
	return (op1 * op2)
}
if (op == "/")
{
	return int(op1 / op2)
}
if (op == ">")
{
	return (op1 > op2)
}
if (op == ">=")
{
	return (op1 >= op2)
}
if (op == "<")
{
	return (op1 < op2)
}
if (op == "<=")
{
	return (op1 <= op2)
}
if (op == "==")
{
	return (op1 == op2)
}
if (op == "!=")
{
	return (op1 != op2)
}
if (op == ">>")
{
	return int(op1 / (2^op2))
}
if (op == "<<")
{
	return (op1 * (2^op2))
}
exit_error(35, op)
}

# Read out from macro definitions
# Convert octal and hexadecimal number into decimal value
function convert(string, elements)
{
n = split(string, elements)	# Delete leading and trailing blanks
if (n > 1)
{
	exit_error(36, string)
}
if (elements[1] ~ /^[[:digit:]]/)
{				# Integer constant
	if (match(elements[1], /(U|UL|L)$/) != 0)
	{
		elements[1] = substr(elements[1], 1, RSTART-1)
	}
	if (elements[1] !~ /^(0[xX][[:xdigit:]]+|0[0-7]*|[1-9][[:digit:]]*)$/)
	{
		exit_error(37, elements[1])
	}
	value = 0
	if (elements[1] ~ /^0[xX]/)
	{		# Hexadecimal constant
		for (i=3; i<(n_digit+1); i++)
		{		# Convert a digit at a time
			digit = substr(elements[1], i, 1)
			if (digit ~ /[a-fA-F]/)
			{		# Convert "A" to "F" hexadecimal digit
				digit = toupper(digit)-"A"+10
			}
			value = (value * 16) + digit
		}
		return value
	}
	if (elements[1] ~ /^0/)
	{		# Octal constant
		for (i=2; i<(n_digit+1); i++)
		{		# Convert a digit at a time
			value = (value * 8) + substr(elements[1], i, 1)
		}
		return value
	}
	return elements[1]
}

if (elements[1] in macros)	# Extract macro definition value
{		# Undefined macro values 0
	value = split_expression(macros[elements[1]])
} else
{
	print "ddfilter: warning undefined macro '" elements[1] "' at line", \
			FNR, "of file", FILENAME, "assumed 0" | "cat - 1>&2"
	value = 0
}
return value
}

# Print a line
# Print comment "#" and empty lines only if external variable PRINT_COMMENT=="y"
function print_line()
{
if ( (PRINT_COMMENT != "y") && ($(0) ~ /^[[:blank:]]*(#|$)/) )
{
	return
}
label = tolower($(1))
if (label ~ \
 /^((role_)*name|function|(table|pointerto)_(horizontal|vertical)_breakpoint|bypass_offset)$/)
{
	original = $(2)
	for (value in sub_name_prefix)
	{		# Substitute the whole value or the first part only
		done = sub("^" value, sub_name_prefix[value], $(2))
		if (done != 0)
		{
			substitute[original] = $(2)
			break
		}
	}
	for (value in sub_name_integer)
	{		# Substitute the whole value
		done = sub("^" value "$", sub_name_integer[value], $(2))
		if (done != 0)
		{
			substitute[original] = $(2)
			break
		}
	}
}
if (label == "bypass_raster")
{
	original = $(2)
	for (value in sub_bypass)
	{		# Substitute the whole value or the first part only
		done = sub("^" value "$", sub_bypass[value], $(2))
		if (done != 0)
		{
			substitute[original] = $(2)
			break
		}
	}
	if (done == 0)
	{
		exit_error(40, $(2))
	}
}
print $(0)
return
}

# Print an error explanation on standard error and exit with an error code
function exit_error(code, parameter)
{
if (code == 1)
{
	print "ddfilter: error opening or reading", parameter | "cat - 1>&2"
}
if (code == 2)
{
	print "ddfilter: wrong format on table", parameter | "cat - 1>&2"
}
if (code == 3)
{
	print "ddfilter: error closing", parameter | "cat - 1>&2"
}
if (code < 10)
{
	exit 1
}
if (code == 10)
{
	print "ddfilter: wrong input definition '" parameter "'" | "cat - 1>&2"
}
if (code < 20)
{
	exit 2
}
if (code == 20)
{
	print "ddfilter: error reading line", FNR, "in file", FILENAME \
								| "cat - 1>&2"
}
if (code < 30)
{
	exit 3
}
if (code == 30)
{
	print "ddfilter: unexpected condition at line", FNR, "file", FILENAME \
								| "cat - 1>&2"
}
if (code == 31)
{
	print "ddfilter: wrong condition at line", FNR, "file", FILENAME \
								| "cat - 1>&2"
}
if (code == 32)
{
	print "ddfilter: missing '#endif' in file", FILENAME | "cat - 1>&2"
}
if (code == 33)
{
	print "ddfilter: missing ')' at line", FNR, "file", FILENAME \
								| "cat - 1>&2"
}
if (code == 34)
{
	print "ddfilter: unexpected operand '" parameter "' at line", FNR, \
						"file", FILENAME | "cat - 1>&2"
}
if (code == 35)
{
	print "ddfilter: wrong operator: '" parameter "' at line", FNR, "file", \
							FILENAME | "cat - 1>&2"
}
if (code == 36)
{
	print "ddfilter: wrong macro '" parameter "' at line", FNR, "of file", \
							FILENAME | "cat - 1>&2"
}
if (code == 37)
{
	print "ddfilter: wrong constant", parameter, "at line", FNR, \
					"of file", FILENAME | "cat - 1>&2"
}
if (code == 38)
{
	print "ddfilter: excedeed", parameter, \
			"nesting level of parentesis at line", FNR, "of file", \
							FILENAME | "cat - 1>&2"
}
if (code < 40)
{
	exit 4
}
if (code == 40)
{
	print "ddfilter: undefined bypass_raster '" parameter "' at line", \
					FNR, "in file", FILENAME | "cat - 1>&2"
}
if (code < 50)
{
	exit 5
}
if (code == 50)
{
	print "ddfilter: error line at line", FNR, "in file", FILENAME \
								| "cat - 1>&2"
}
exit 6
}

END {
if (ENVIRON["LOG"] != "")
{		# Log substitutions
	for (value in substitute)
		print value "=" substitute[value] > ENVIRON["LOG"]
}
}
