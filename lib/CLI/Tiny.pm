package CLI::Tiny;

#ABSTRACT: Minimalistic toolkit for command line scripts

use strict;
use warnings;
require Exporter;
our @ISA       = qw(Exporter);
our @EXPORT_OK = qw(error say);

sub error {
	my $msg = shift or return;
	print "Error: $msg\n";
	exit 1;
}

sub say {
	my $msg=shift || return;
	print "$msg\n";
}

1;
