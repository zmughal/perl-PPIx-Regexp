=head1 NAME

PPIx::Regexp::Token::Unmatched - Represent an unmatched right bracket

=head1 SYNOPSIS

 use PPIx::Regexp::Dumper;
 PPIx::Regexp::Dumper->new( 'qr{)}smx' )
     ->print();

=head1 INHERITANCE

C<PPIx::Regexp::Token::Unmatched> is a
L<PPIx::Regexp::Token|PPIx::Regexp::Token>.

C<PPIx::Regexp::Token::Unmatched> has no descendants.

=head1 DESCRIPTION

This class is used to represent an unmatched right bracket of any sort -
parenthesis, square bracket, curly bracket, or whatever.

This class is not generated by the tokenizer; instead the lexer
reblesses a
L<PPIx::Regexp::Token::Structure|PPIx::Regexp::Token::Structure> into it
when it is found to be unmatched.

=head1 METHODS

This class provides no public methods beyond those provided by its
superclass.

=cut

package PPIx::Regexp::Token::Unmatched;

use strict;
use warnings;

use base qw{ PPIx::Regexp::Token };

our $VERSION = '0.035';

# Return true if the token can be quantified, and false otherwise
# sub can_be_quantified { return };

1;

__END__

=head1 SUPPORT

Support is by the author. Please file bug reports at
L<http://rt.cpan.org>, or in electronic mail to the author.

=head1 AUTHOR

Thomas R. Wyant, III F<wyant at cpan dot org>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2009-2013 by Thomas R. Wyant, III

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl 5.10.0. For more details, see the full text
of the licenses in the directory LICENSES.

This program is distributed in the hope that it will be useful, but
without any warranty; without even the implied warranty of
merchantability or fitness for a particular purpose.

=cut

# ex: set textwidth=72 :
