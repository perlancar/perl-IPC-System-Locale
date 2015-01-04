package IPC::System::Locale;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use IPC::System::Options ();

use Exporter qw(import);
our @EXPORT_OK = qw(system);

sub system {
    my $opts = ref($_[0]) eq 'HASH' ? shift : {};

    IPC::System::Options::system({
        lang => 'C', # default
        %$opts,
    }, @_);
}

1;
# ABSTRACT: Set language before executing system()

=head1 SYNOPSIS

 use IPC::System::Locale qw(system);

 # set locale to C
 system(...);

 # set locale explicitly
 system({lang=>"id_ID"} ...);


=head1 DESCRIPTION

=head1 FUNCTIONS

=head2 system([ \%opts ], @args)

This is a shortcut for C<<IPC::System::Options::system({lang=>"C"}, ...)>> (you
can also set C<lang> or other options explicitly).

This routine might be helpful if you are checking the output of some program and
want to make sure that the output is in English/C locale.

