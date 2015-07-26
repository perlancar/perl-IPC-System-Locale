package IPC::System::Locale;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use IPC::System::Options qw(import);

sub system {
    my $opts = ref($_[0]) eq 'HASH' ? shift : {};

    IPC::System::Options::system({
        lang => 'C', # default
        %$opts,
    }, @_);
}

sub backtick {
    my $opts = ref($_[0]) eq 'HASH' ? shift : {};

    IPC::System::Options::backtick({
        lang => 'C', # default
        %$opts,
    }, @_);
}

1;
# ABSTRACT: Set language before executing system() or backtick/qx

=head1 SYNOPSIS

 use IPC::System::Locale qw(system backtick);

 # set locale to C
 system(...);

 # set locale explicitly
 system({lang=>"id_ID"} ...);

 # same for backtick (qx)
 my $output = backtick("df");

Set default options for all calls (prefix each option with dash):

 use IPC::System::Locale 'system', 'backtick', -lang=>'id_ID';


=head1 DESCRIPTION

=head1 FUNCTIONS

=head2 system([ \%opts ], @args)

This is a shortcut for C<< IPC::System::Options::system({lang=>"C"}, ...) >>
(you can also set C<lang> or other options explicitly).

This routine might be helpful if you are checking the output of some program and
want to make sure that the output is in English/C locale.

=head2 backtick([ \%opts ], @args)

This is a shortcut for C<< IPC::System::Options::backtick({lang=>"C"}, ...) >>
(you can also set C<lang> or other options explicitly).

This routine might be helpful if you are checking the output of some program and
want to make sure that the output is in English/C locale.


=head1 SEE ALSO

L<IPC::System::Options>
