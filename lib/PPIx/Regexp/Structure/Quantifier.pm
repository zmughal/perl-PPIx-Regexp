=head1 NAME

PPIx::Regexp::Structure::Quantifier - Represent curly bracket quantifiers

=head1 SYNOPSIS

 use PPIx::Regexp::Dumper;
 PPIx::Regexp::Dumper->new( 'qr{fo{2,}}smx' )
     ->print();

=head1 INHERITANCE

 PPIx::Regexp::Structure::Quantifier
 isa PPIx::Regexp::Structure

=head1 DESCRIPTION

This class represents curly bracket quantifiers such as C<{3}>, C<{3,}>
and C<{3,5}>. The contents are left as literals or interpolations.

=head1 METHODS

This class provides no public methods beyond those provided by its
superclass.

=cut

package PPIx::Regexp::Structure::Quantifier;

use strict;
use warnings;

use Params::Util 0.25 qw{ _INSTANCE };

use base qw{ PPIx::Regexp::Structure };

our $VERSION = '0.000_03';

# Called by the lexer to record the capture number.
sub __PPIX_LEXER__record_capture_number {
    my ( $self, $number ) = @_;
    return $number;
}

1;

__END__

=head1 SUPPORT

Support is by the author. Please file bug reports at
L<http://rt.cpan.org>, or in electronic mail to the author.

=head1 AUTHOR

Thomas R. Wyant, III F<wyant at cpan dot org>

=head1 COPYRIGHT

Copyright 2009 by Thomas R. Wyant, III.

=cut

# ex: set textwidth=72 :
