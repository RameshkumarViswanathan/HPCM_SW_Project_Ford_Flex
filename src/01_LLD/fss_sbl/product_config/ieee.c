/**********************************************************************
*
*	C %name:		ieee.c %
*	Description:	Ieee decoder
*			options -dn exclude debug section n
*
**********************************************************************/
#include <stddef.h>
#include <errno.h>
#include <signal.h>
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include <getopt.h>

#define LOC_SIGNAL_MESSAGE "signal %0*d"
#define LOC_SIGNAL_MESSAGE_LENGHT 8	/* WARNING: Lengt of above. */
#define LOC_SIGNAL_NUMBER_LENGHT 5	/* Number of signal digit to print. */
#define LOC_SIGNAL_BUFFER_LENGHT \
			(LOC_SIGNAL_MESSAGE_LENGHT + LOC_SIGNAL_NUMBER_LENGHT)

#define MAX_DEBUG_TYPE 21U
#define N_FIELD 4
#define N_COMMANDS 26U

static void Signals_receiver(int sig);
static void Reporting_errors(void);
static void Exit_error(const char * message);
static void Close_in_file(void);
static void Close_out_file(void);
static void help(void);

static void decoder(void);
static void hex_number_decoder(const size_t length);
static void number_or_string(const size_t byte);
static void implementation_defined_function(const uint_least8_t byte);
static void standard_function(const uint_least8_t function);
static void standard_variable_and_identifier(const uint_least8_t id);
static void standard_command_name(void);

static volatile sig_atomic_t Signal;
static volatile sig_atomic_t Signal_received = 0;
static FILE * fp = NULL, * fo = NULL;
static const char * name_pointer;

static uint_least8_t command;
enum t_next_field
{
null,
x,
string,
hex_number
};
static enum t_next_field * fields_types;
static bool is_debug_type = false;
static int field_index;
static int debug_index = 0;
static bool no_bb[MAX_DEBUG_TYPE];

/* ---------------- */
/* Signals handler. */
/* ---------------- */
static void Signals_receiver(const int sig)
{
Signal = (sig_atomic_t)sig;
if (Signal_received < SIG_ATOMIC_MAX)
{
	Signal_received++;
}
switch (sig)
{
case SIGFPE:	/* Unreentrant C standard signals. */
case SIGILL:	/*lint -fallthrough */
case SIGSEGV:	/*lint -fallthrough */
	break;
case SIGABRT:	/* Reentrant C standard signals. */
case SIGINT:	/*lint -fallthrough */
case SIGTERM:	/*lint -fallthrough */
	break;
default:	/* Not C standard signals. */
	break;
}
exit(EXIT_FAILURE);
}

/* ----------------------------- */
/* Sincronous error termination. */
/* ----------------------------- */
static void Exit_error(const char * const message)
{
const char * err_mes;
long int pos;

(void)fflush(fo);
if ( (fp != NULL) && (fp != stdin) )
{
	pos = ftell(fp);
	if (pos == -1L)
	{
		err_mes = strerror(errno);
		(void)fprintf(stderr, "%s: Internal error %d: %s.\n",
						name_pointer, errno, err_mes);
	} else
	{
		(void)fprintf(stderr, "%s: While at file position %#lX\n",
							name_pointer, pos);
	}
}
if (message != NULL)
{
	(void)fprintf(stderr, "%s: Error: %s\n\a", name_pointer, message);
}
exit(EXIT_FAILURE);
}

/* --------------------------------------- */
/* Print messages about signals and errno. */
/* --------------------------------------- */
static void Reporting_errors(void)
{
const char * message;
char buffer[LOC_SIGNAL_BUFFER_LENGHT];

if (Signal_received > 0)
{
	(void)fprintf(stderr, "%s: Terminated due to %d message", name_pointer,
							Signal_received);
	if (Signal_received > 1)
	{
		(void)fprintf(stderr, "s, last message is");
	}
	(void)fprintf(stderr, ": ");
	switch (Signal)
	{
	case SIGABRT:
		message = "abnormal termination";
		break;
	case SIGFPE:
		message = "erroneus arithmetic operation";
		break;
	case SIGILL:
		message = "invalid function image";
		break;
	case SIGINT:
		message = "interactive attention";
		break;
	case SIGSEGV:
		message = "invalid access to storage";
		break;
	case SIGTERM:
		message = "termination request";
		break;
	default:
		(void)sprintf(buffer, LOC_SIGNAL_MESSAGE,
					LOC_SIGNAL_NUMBER_LENGHT, Signal);
		message = buffer;
		break;
	}
	(void)fprintf(stderr, "%s.\n\a", message);
}    
if (errno != 0)
{
	message = strerror(errno);
	(void)fprintf(stderr, "Internal error %d: %s.\n\a", errno, message);
}
return;
}

/* ----------------------------- */
/* Close ieee input file at end. */
/* ----------------------------- */
static void Close_in_file(void)
{
int ret_code;

ret_code = fclose(fp);
fp = NULL;
if (ret_code != 0)
{
	Exit_error(" closing ieee file");
}
return;
}

/* ------------------------- */
/* Close output file at end. */
/* ------------------------- */
static void Close_out_file(void)
{
int ret_code;

ret_code = fclose(fo);
fo = NULL;
if (ret_code != 0)
{
	Exit_error(" closing output file");
}
return;
}

/* ---- */
/* main */
/* ---- */
int main(const int argc, char * const argv[])
{
void (* last_handler)(int func);
int c, i, ret_code;

ret_code = atexit(&Reporting_errors);
if (ret_code != 0)
{
	Exit_error(" installing Reporting_errors");
}
last_handler = signal(SIGABRT, &Signals_receiver);
if (last_handler == SIG_ERR)
{
	Exit_error(" installing SIGABRT receiver");
}
last_handler = signal(SIGFPE, &Signals_receiver);
if (last_handler == SIG_ERR)
{
	Exit_error(" installing SIGFPE receiver");
}
last_handler = signal(SIGILL, &Signals_receiver);
if (last_handler == SIG_ERR)
{
	Exit_error(" installing SIGILL receiver");
}
last_handler = signal(SIGINT, &Signals_receiver);
if (last_handler == SIG_ERR)
{
	Exit_error(" installing SIG_ERR receiver");
}
last_handler = signal(SIGSEGV, &Signals_receiver);
if (last_handler == SIG_ERR)
{
	Exit_error(" installing SIGSEGV receiver");
}
last_handler = signal(SIGTERM, &Signals_receiver);
if (last_handler == SIG_ERR)
{
	Exit_error(" installing SIGTERM receiver");
}
name_pointer = strrchr(argv[0], '/');
if (name_pointer == NULL)
{		/* Check for ms-dos separator. */
	name_pointer = strrchr(argv[0], '\\');
}
if (name_pointer == NULL)
{		/* No path found; use full argument. */
	name_pointer = argv[0];
} else
{		/* Will not show found separator. */
	name_pointer++;
}
do
{
	c = getopt(argc, argv, ":d:hi:o:");
	switch (c)
	{
	case 'd':
		ret_code = sscanf(optarg, "%d", &i);
		if (i == EOF)
		{
			Exit_error("argument of -d option is not a number");
		}
		if ((i<0) || (i>=(int)MAX_DEBUG_TYPE))
		{
			Exit_error("argument of -d option is out of range");
		}
		no_bb[i] = true;
		break;
	case 'h':
		help();
		break;
	case 'i':		/* Open input file. */
		fp = fopen(optarg, "rb");
		if (fp == NULL)
		{
			Exit_error(": input file unreadeable");
		}
		ret_code = atexit(&Close_in_file);
		if (ret_code != 0)
		{
			Exit_error(" installing Close_in_file");
		}
		break;
	case 'o':
		fo = fopen(optarg, "w");
		if (fo == NULL)
		{
			Exit_error(": output file unwritable");
		}
		ret_code = atexit(&Close_out_file);
		if (ret_code != 0)
		{
			Exit_error(" installing Close_out_file");
		}
		break;
	case ':':
		(void)fprintf(stderr, "%s: option -%c\n", name_pointer, optopt);
		Exit_error("option requires an argument");
		break;
	case '?':
		(void)fprintf(stderr, "%s: option -%c\n", name_pointer, optopt);
		Exit_error("unrecognized option");
		break;
	case -1:
		break;
	default:
		Exit_error(" in options");
		break;
	}
} while (c != -1);
if (fp == NULL)
{
	Exit_error(" input file unspecified");
}
if (fo == NULL)
{
	fo = stdout;
}
decoder();
return EXIT_SUCCESS;
}

/* -------------------------- */
/*  */
/* -------------------------- */
static void help(void)
{
int ret_code;
bool error;

ret_code = fprintf(stderr, "Sinopsys: %s [options]\n", name_pointer);
error = (ret_code <= 0);
ret_code = fprintf(stderr, "options: -dn -i<ifile> -o<ofile>\n"
				"\tn: number of debug section excluded\n");
error = (ret_code <= 0) || error;
exit(error ? EXIT_FAILURE : EXIT_SUCCESS);
}

/* -------------------------- */
/* Return true if eof reached */
/* -------------------------- */
static void decoder(void)
{
static enum t_next_field AT_S_commands[N_FIELD] =
				{hex_number,string,hex_number,hex_number};
static enum t_next_field AT_N_commands[N_FIELD] =
				{string,hex_number,string,hex_number};
static uint_least8_t ty_type, debug_type;
static bool ty_command = false;
long int next_block_address;
size_t i, n;
int byte_read, length;
int ret_code;
uint_least8_t byte;
char buffer[256];

do
{
	byte_read = getc(fp);
	if (byte_read == EOF)
	{
		if (ferror(fp) != 0)
		{
			Exit_error(" reading section id");
		}
		break;
	}
	byte = (uint_least8_t)byte_read;
				/* Decoder (Std 695 appendix B) */
	if ((byte & 0xE0U) == 0xE0U)		/* 111xxxxx */
	{
		command = byte & 0x1FU;
		standard_command_name();
		ty_command = false;
		continue;
	}
	ret_code = fprintf(fo, ",");
	if (ret_code < 0)
	{
		Exit_error("printing number/string colon");
	}
	if ((byte & 0xE0U) == 0xC0U)		/* 110xxxxx */
	{
		standard_variable_and_identifier(byte & 0x1FU);
	} else if ((byte & 0xE0U) == 0xA0U)	/* 101xxxxx */
	{
		standard_function(byte & 0x0FU);
	} else if ((byte & 0xF0U) == 0x90U)	/* 1001xxxx */
	{
		implementation_defined_function(byte & 0x0FU);
	} else if ((byte & 0xF0U) == 0x80U)	/* 1000xxxx */
	{
		byte &= 0x0FU;
		hex_number_decoder((size_t)byte);
	} else					/* 0xxxxxxx */
	{
		number_or_string((size_t)byte);
					/* TY MRI/HP Extensions */
		if ( (command == 18U) && (!ty_command) )
		{			/* First byte on TY command */
				ty_command = true;
				ty_type = byte;
				switch (ty_type)
				{
				case 0x4E:	/* N - C language enumeration */
					fields_types = AT_N_commands;
					field_index = 0;
					break;
				case 0x53:	/* S - structure */
				case 0x55:	/* U - union */
					fields_types = AT_S_commands;
					field_index = 0;
					break;
				default:
					break;
				}
		}
	}
	switch (command)	/* MRI/HP Extensions */
	{
	case 13U:	/* LD */
		ret_code = fprintf(fo, ",...");
		if (ret_code < 0)
		{
			Exit_error("printing LD elipsis");
		}
		ret_code = fseek(fp, (long int)byte, SEEK_CUR);
		if (ret_code != 0)
		{
			Exit_error(" jumping LD data");
		}
		break;
	case 18U:	/* TY */
		if ((byte & 0x80U) == 0x00U)
		{
			switch (ty_type)
			{
			case 0x4E:	/* N - C language enumeration */
				if (field_index >= (N_FIELD-1))
				{
					field_index = 1;
				}
				break;
			case 0x53:	/* S - structure */
			case 0x55:	/* U - union */
				if (field_index >= (N_FIELD-1))
				{
					field_index = 0;
				}
				break;
			case 0x54:	/* T - type */
			case 0x5A:	/* Z - zero based array */
			case 0x67:	/* g - Bitfield */
			case 0x6E:	/* n - Type Qualifier */
				field_index = 0;	/* hex_number */
				break;
			default:
				break;
			}
		}
		break;
	case 24U:	/* BB */
		if (!is_debug_type)
		{
			debug_type = byte;
			if (debug_type > MAX_DEBUG_TYPE)
			{
				Exit_error("excedeed debug index type");
			}
			is_debug_type = true;
			debug_index++;
		}
		if (no_bb[debug_type])
		{
			ret_code = fprintf(fo, ",...");
			if (ret_code < 0)
			{
				Exit_error("printing BB elipsis");
			}
			length = getc(fp) & 0x0F;
			n = fread((void *)buffer, (size_t)1,
						(size_t)(int)length, fp);
			if (n != (size_t)(int)length)
			{
				Exit_error("reading number");
			}
			next_block_address = 0L;
			for (i = (size_t)0; i < (size_t)(int)length; i++)
			{
				next_block_address = (next_block_address *
							0x100L) + buffer[i];
			}
			next_block_address += (ftell(fp) - length) - 3L;
			ret_code = fseek(fp, next_block_address, SEEK_SET);
			if (ret_code != 0)
			{
				Exit_error("jumping BB");
			}
			debug_index--;
		}
/*
#define DEBUG_NESTING 12
		if (debug_index >= DEBUG_NESTING)
		{
			Exit_error("Execeeded internal limit on debug nesting");
		}
		next_block_address[debug_index] = ftell(fp);
		debug_block_type[debug_index] = read_number();
		block_size = read_number();
		next_block_address[debug_index] += block_size - 1UL;
		if (no_bb[debug_block_type[debug_index]])
		{
			ret_code = fseek(fp, next_block_address[debug_index], SEEK_SET);
			if (ret_code != 0)
			{
				Exit_error(" jumping BB");
			}
			debug_index--;
			return;
		}
*/
		break;
	default:
		break;
	}
} while (feof(fp) == 0);
return;
}

/* ----------------------------- */
/* . */
/* ----------------------------- */
static void hex_number_decoder(const size_t length)
{
unsigned long int value;
int ret_code;
size_t i, n;
char buffer[16];

n = fread((void *)buffer, (size_t)1, length, fp);
if (n != length)
{
	Exit_error("reading number");
}
value = 0U;
for (i = (size_t)0; i < length; i++)
{
	value = (value * 0x100U) + ((unsigned long int)(int)buffer[i] & 0xFFU);
}
ret_code = fprintf(fo, "%#.*lX", 2*(int)length, value);
if (ret_code < 0)
{
	Exit_error("printing hex number");
}
field_index++;
return;
}

/* ----------------------------- */
/* . */
/* ----------------------------- */
static void number_or_string(const size_t byte)
{
int ret_code;
size_t n, length;
char buffer[130];
bool printable = true;

switch (fields_types[field_index%N_FIELD])
{
case string:
	length = byte;
	buffer[0] = '\'';
	n = fread((void *)&buffer[1], (size_t)1, length, fp);
	if (n != length)
	{
		Exit_error("reading string");
	}
	buffer[n+(size_t)1] = '\'';
	buffer[n+(size_t)2] = '\0';
	for (; n>(size_t)0; n--)
	{
		printable = (isprint((int)buffer[n]) != 0);
		if (!printable)
		{		/* try to fall-down in the hex-number */
			ret_code = fseek(fp, -(long int)length, SEEK_CUR);
			if (ret_code != 0)
			{
				Exit_error("discarding string");
			}
			break;
		}
	}
	if (printable)
	{
		ret_code = fputs(buffer, fo);
		if (ret_code == EOF)
		{
			ret_code = -1;
		}
		break;
	}
	ret_code = fprintf(fo, "%#.2X", (int)byte);
	break;
case hex_number:
	ret_code = fprintf(fo, "%#.2X", (int)byte);
	break;
default:
	(void)fprintf(stderr, "\n%x\n", (int)byte);
	Exit_error("undecoded number/string");
	break;
}
if (ret_code < 0)
{
	Exit_error("printing number/string");
}
field_index++;
return;
}

/* ----------------------------- */
/* . */
/* ----------------------------- */
static void implementation_defined_function(const uint_least8_t byte)
{
return;
}

/* ----------------------------- */
/* . */
/* ----------------------------- */
static void standard_function(const uint_least8_t function)
{
int ret_code;
/* functions "[", "]", "{", "}", are MRI-HP extensions */
static const char * const functions[32] =
{
 "@F", "@T", "@ABS", "@NEG", "@NOT", "+", "-", "/",
 "*", "@MAX", "@MIN", "@MOD", "<", ">", "=", "#",
 "@AND", "@OR", "@XOR", "@EXT", "@INS", "@ERR", "@IF", "@ELSE",
 "@END", "@ISDEF", "[", "]", "{", "}", "(", ")"
};

if (strlen(functions[function]) == (size_t)0)
{
	Exit_error("decoding function");
}
ret_code = fputs(functions[function], fo);
if (ret_code == EOF)
{
	Exit_error("printing function");
}
return;
}

/* ----------------------------- */
/* . */
/* ----------------------------- */
static void standard_variable_and_identifier(const uint_least8_t id)
{
int ret_code;
uint_least8_t ascii_letter;

if ((id < 1U) || (id > 26U))
{
	Exit_error("decoding variable and identifier");
}
ascii_letter = (id - 1U) + (uint_least8_t)'A';
ret_code = putc((int)ascii_letter, fo);
if (ret_code == EOF)
{
	Exit_error("printing variable and identifier");
}
return;
}

/* ----------------------------- */
/* . */
/* ----------------------------- */
static void standard_command_name(void)
{
int indentation, ret_code;
static struct t_command
{
	const char * names;
	enum t_next_field fields_list[N_FIELD];
} commands[N_COMMANDS] =
{
	{"MB", {string,string,null,null}},
	{"ME\n", {null,null,null,null}},
	{"AS", {hex_number,hex_number,null,null}},
	{"IR", {x,x,x,x}},
	{"LR", {x,x,x,x}},
	{"SB", {hex_number,null,null,null}},
	{"ST", {hex_number,string,null,null}},
	{"SA", {hex_number,hex_number,hex_number,hex_number}},
	{"NI", {hex_number,string,null,null}},
	{"NX", {x,x,x,x}},
	{"CO", {hex_number,string,null,null}},
	{"DT", {x,x,x,x}},
	{"AD", {hex_number,hex_number,null,null}},
	{"LD", {hex_number,null,null,null}},
	{"CS", {hex_number,hex_number,null,null}},
	{"CS", {x,x,x,x}},
	{"NN", {hex_number,string,null,null}},
	{"AT", {hex_number,hex_number,hex_number,hex_number}},
	{"TY", {hex_number,string,hex_number,string}},
	{"RI", {x,x,x,x}},
	{"WX", {x,x,x,x}},
	{"LI", {x,x,x,x}},
	{"LX", {x,x,x,x}},
	{"RE", {x,x,x,x}},
/* Extensions from Microtec Research Incorporated and Hewlett Packard Company */
	{"BB", {hex_number,hex_number,string,hex_number}},
	{"BE", {hex_number,null,null,null}}
};

if (command != 0U)	/* MB */
{
	ret_code = fprintf(fo, "\n");
	if (ret_code < 0)
	{
		Exit_error("printing <nl>");
	}
}
if (command == 25U)	/* BE */
{
	debug_index--;
}
for (indentation = 0; indentation < debug_index; indentation++)
{
	ret_code = fprintf(fo, "| ");
	if (ret_code < 0)
	{
		Exit_error("printing identation");
	}
}
if (command >= N_COMMANDS)
{
	Exit_error("decoding command");
}
is_debug_type = false;
field_index = 0;
fields_types = commands[command].fields_list;
ret_code = fputs(commands[command].names, fo);
if (ret_code == EOF)
{
	Exit_error("printing command");
}
return;
}
