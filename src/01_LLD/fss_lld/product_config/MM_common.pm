# Description:	common perl module
package MM_common;

use 5.010001;
use strict;
use warnings FATAL => 'all';
use autodie;
use English;
use POSIX;
use Carp;
use File::Basename;
use File::Path 'remove_tree';
use FindBin;
use Getopt::Long qw(:config posix_default bundling no_ignore_case);
use Getopt::Long qw(:config auto_version auto_help permute pass_through);

our $opt_error;
our $opt_keep;		# Keep output file even in case of error.
our $opt_output;	# Output file name; to be removed before to die
our $opt_timeout;
our $program_name;
sub check_child_error(;$$);
sub error_sig_handler(@);
sub normal_sig_handler(@);
sub help(;$);

sub help(;$)
{
	alarm 0;
	my ($exitval) = @_;
	$exitval //= 1;
	Getopt::Long::HelpMessage(-verbose=>$Carp::Verbose,
							-exitval => 'NOEXIT');
	my $pathname = File::Spec->catfile(($FindBin::RealBin),
							__PACKAGE__ . ".pm");
	Getopt::Long::HelpMessage(-verbose=>$Carp::Verbose,
				-input => $pathname, -exitval => $exitval)
}
BEGIN
{
my $version = "%version: 26 %";		# Special string updated by synergy
$version =~ s/^.*? | %//g;
our $VERSION = '';
$VERSION = $main::VERSION if defined $main::VERSION;
$VERSION .= $version;
$program_name = File::Basename::basename($FindBin::RealScript);
Getopt::Long::GetOptions(
	'error|E',				# Warnings as error
	'help|h|?' => sub {help(0)},
	'keep|k!',				# Keep output file even in error
	'output|o=s',				# Output file
	'timeout|t=s',				# Override default timeout
	'version|V' => sub {Getopt::Long::VersionMessage()},
	'verbose|v+' => sub
	{
		$Carp::Verbose++;
		Getopt::Long::Configure(qw(debug)) if $Carp::Verbose>2
	}
);
$opt_keep //= 0;
alarm $opt_timeout if defined $opt_timeout;
if (defined $opt_output)
{
	remove_tree($opt_output, {verbose => $Carp::Verbose});
	if (defined $main::opt_output_is_dir)
		{mkdir $opt_output}
	else
	{
		close STDOUT;
		open STDOUT, '>', $opt_output
	}
}
}

my $info;
sub info($)
{
	$info = 1;
	warn "Info: $_[0]$RS";
	undef $info
}
#--- Signals handling
# Propagate 'warn'
$SIG{__WARN__} = sub
{
	my ($message) = @_;
	die($message) if defined $opt_error;
	if ($Carp::Verbose <= 1)
	{
		state %WARNS;
		return if $WARNS{$message}++	# Do not repeat equal message
	}
	my $output_message = "$program_name: ";
	$output_message .= "processing '$ARGV' "
					if $ARGV and ($Carp::Verbose>1);
	$output_message .= $message;
	warn $output_message
};
our $die;
$SIG{__DIE__} = sub
{
	$SIG{__DIE__} = '';
	$die = '';		# Set $die also as a flag to avoid END
	if ((defined $opt_output) and (!$opt_keep))
		{remove_tree($opt_output, (verbose => $Carp::Verbose))}
	my ($message) = @_;
	my $output_message = "$program_name: ";
	$output_message .= "processing '$ARGV' "
						if $ARGV and ($Carp::Verbose>1);
	$output_message .= $message;
	Carp::croak $output_message if $Carp::Verbose>1;
	my $pending_child;
	do
	{
		$pending_child = waitpid(-1, WNOHANG)
	} while ($pending_child > 0);
	die $output_message
};
our $no_child_die;	# for child error: undef=>die, ''=>warn; 1=>nothing
#--- Child stopped or terminated
sub check_child_error(;$$)
{
	if (defined $no_child_die)
		{return if $no_child_die}
	my ($cmd, $err) = @_;
	$cmd //= 'CHLD';
	$cmd ||= 'CHLD';
	$err //= $English::CHILD_ERROR;	# ${^CHILD_ERROR_NATIVE}
	return if $err == 0;
	my $message;
	if ($err == -1)
	{
		$message = "failed to execute '$cmd': $English::OS_ERROR"
	}
#	elsif (WIFSIGNALED($?)){ 'signal' . WTERMSIG($?)}
	elsif ($err & 0x7F)	# lower 7 bits are the signal number
	{			# 8th bit set if child coredumped
		$message = $cmd . sprintf(" died with signal %d, %s coredump",
				$err & 0x7F, ($err & 0x80) ? 'with' : 'without')
	}
	else	# ($err != 0)	# upper 8 bits are the exit code
	{
		$message = $cmd . sprintf(" exited with value %d", $err >> 8)
	}
	$message .= $English::RS if $Carp::Verbose == 0;
	if (defined $no_child_die)
		{warn $message}
	else	{die $message}
};
$SIG{CHLD} = sub {check_child_error()};
		# error signals:
sub error_sig_handler(@) {die "Caught a SIG@_"}
# ABRT Abort
# BUS  Bus error (bad memory access) (not on ms-windows)
# EMT  EMT trap
# FPE  Floating point exception
# ILL  Illegal Instruction
# QUIT Quit from keyboard
# SEGV Invalid memory reference
# SYS  Bad argument to routine (not on ms-windows)
# TRAP Trace/breakpoint trap (not on ms-windows)
use sigtrap qw(handler error_sig_handler untrapped error-signals);
if ($English::OSNAME !~ /dos|MSWin32/)	# cygwin ?
{
	# VTALRM Virtual time alarm
	require sigtrap;
	sigtrap->import(qw/handler normal_sig_handler VTALRM/);
	# PWR  Power failure
	# XCPU CPU time limit exceeded
	# XFSZ File size limit exceeded
	# STKFLT Stack fault on coprocessor
	sigtrap->import(qw/handler error_sig_handler untrapped PWR XCPU XFSZ STKFLT/);
}
		# normal signals:
sub normal_sig_handler(@) {error_sig_handler("@{_}$English::RS")}
# HUP  Hangup on terminal or death of parent
# INT  Interrupt from keyboard
# PIPE Broken pipe: write to pipe with no readers
# TERM Terminate
# ALRM Alarm clock
use sigtrap qw(handler normal_sig_handler normal-signals ALRM);
1;

__END__

=head1 NAME

MM_common - MM-PWT common perl utilities

=head1 DESCRIPTION

MM_common::check_child_error(;$$) intercept child error and die with
an appropriate message.
The optional parameters are the failed command, default to 'child', and the
error number, dafult to' $CHILD_ERROR'.
The error message depend on the the error number and reports if the child
command has been executed, its exiting code and if there is a coredump.

MM_common:warning($) print the message, with a header, on STDERR.

Dying unlink output file if defined,
print the error message and terminate.

Signal die with I<Caught a SIG...> message.
I.e.: a timeout message I<Caught a SIGALRM>.

=head1 NOTES

=head2 options

Prefix 'no' or 'no-', i.e.: --no-keep or --nok, negate simple option.
Verbose increase the messages verbosity.
See Carp module.

=head2 signals

In case of an error, a received signal (i.e. INT) or a timeout, 
this code terminate immediately after deleted the eventual output file
if controlled by the -o option

=head2 common package use

MM_common.pm have to be present in the same directory of the using module.

use this code in the main perl:

 alarm #;				# Eventuaally overflowed by -t option
 my $version = '%version: 26 %';	# Special string updated by synergy
 $version =~ s/(?:^.*? | %)//g;
 our $VERSION = $version;
 use FindBin;
 push (@INC, $FindBin::RealBin);
 require MM_common;
 Getopt::Long::Configure(qw(require_order no_pass_through));
 Getopt::Long::GetOptions() or ) or MM_common::help();
...

=head1 OPTIONS

 -E --error		Die in case of a warning
 -? -h --help		Print a short help and exit
 -k --keep		Keep output file even in case of error
 -o --output <file> 	Output file (default stdout)
 -t --timeout # 	Timeout, override eventual default, 0=no timeout
 -V --version		Print the version on stderr
 -v --verbose   	Act verbosely (multiple for more)

=head1 AUTOR

TechM

=head1 COPYRIGHT

(c) Copyright 2022 
