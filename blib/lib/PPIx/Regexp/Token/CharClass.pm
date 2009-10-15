=head1 NAME

PPIx::Regexp::Token::CharClass - Represent a character class

=head1 SYNOPSIS

 use PPIx::Regexp::Dumper;
 PPIx::Regexp::Dumper->new( 'qr{\w}smx' )
     ->print();

=head1 INHERITANCE

 PPIx::Regexp::Token::CharClass
 isa PPIx::Regexp::Token

=head1 DESCRIPTION

This class represents a character class. It is not intended that this
class be instantiated; it simply serves to identify a character class in
the class hierarchy, and provide any common methods that might become
useful.

=head1 METHODS

This class provides no public methods beyond those provided by its
superclass.

=cut

package PPIx::Regexp::Token::CharClass;

use strict;
use warnings;

use base qw{ PPIx::Regexp::Token };

our $VERSION = '0.000_01';

# Return true if the token can be quantified, and false otherwise
# sub can_be_quantified { return };

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
