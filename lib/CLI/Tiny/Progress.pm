package CLI::Tiny::Progress;
# ABSTRACT: show progress on command line

use strict;
use warnings;
use 5.6.1; #necessary?
require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(progress);

our @prompter = ( "\ \ \ \r", ".\ \ \r", "..\ \r", "...\r", );
our $state = 0;    #of prompter

=head1 SYNOPSIS

	use CLI::Tiny::Progress 'update';
	while ( $done == 0 ) {
		update('downloading');
	}

=head1 SEE ALSO

Term::ProgressBar

=cut

#
## subs
#
sub update {
	my $msg = shift || '';
	$| = 1;
	print $msg. $prompter[ $state++ ];

	$state = 0 if ( $state == @prompter ); 
	sleep 1;
}


1;