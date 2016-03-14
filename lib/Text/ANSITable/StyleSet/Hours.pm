package Text::ANSITable::StyleSet::Hours;

# Created on: 2014-08-17 08:46:09
# Create by:  Ivan Wills
# $Id$
# $Revision$, $HeadURL$, $Date$
# $Revision$, $Source$, $Date$

use Moo;
use namespace::autoclean;
use version;
use Carp;
use Data::Dumper qw/Dumper/;
use English qw/ -no_match_vars /;

our $VERSION = version->new('0.0.1');

has short  => ( is => 'rw' );
has long   => ( is => 'rw' );
has stddev => ( is => 'rw' );
has col    => ( is => 'rw' );

sub apply {
    my ($self, $table) = @_;

    $table->add_cond_row_style(sub {
        my ($t, %args) = @_;
        my %styles;

        my $time = $args{row_data}[$self->col];

        return \%styles;
    });
}

__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 NAME

Text::ANSITable::StyleSet::Hours - Styling for table

=head1 VERSION

This documentation refers to Text::ANSITable::StyleSet::Hours version HASH(0x1b51ce0)


=head1 SYNOPSIS

   use Text::ANSITable::StyleSet::Hours;

   # Brief but working code example(s) here showing the most common usage(s)
   # This section will be as far as many users bother reading, so make it as
   # educational and exemplary as possible.


=head1 DESCRIPTION

=head1 SUBROUTINES/METHODS

=head2 C<apply ()>

=head1 ATTRIBUTES

=head2 short

=head2 long

=head2 stddev

=head2 col

=head1 DIAGNOSTICS

=head1 CONFIGURATION AND ENVIRONMENT

=head1 DEPENDENCIES

=head1 INCOMPATIBILITIES

=head1 BUGS AND LIMITATIONS

There are no known bugs in this module.

Please report problems to Ivan Wills (ivan.wills@gmail.com).

Patches are welcome.

=head1 AUTHOR

Ivan Wills - (ivan.wills@gmail.com)

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2014 Ivan Wills (14 Mullion Close, Hornsby Heights, NSW Australia 2077).
All rights reserved.

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself. See L<perlartistic>.  This program is
distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.

=cut
