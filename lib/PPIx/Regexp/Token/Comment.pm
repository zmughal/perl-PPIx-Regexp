=head1 NAME

PPIx::Regexp::Token::Comment - Represent a comment.

=head1 SYNOPSIS

 use PPIx::Regexp::Dumper;
 PPIx::Regexp::Dumper->new( 'qr{foo(?#bar)}smx' )
     ->print();

=head1 INHERITANCE

C<PPIx::Regexp::Token::Comment> is a
L<PPIx::Regexp::Token|PPIx::Regexp::Token>.

C<PPIx::Regexp::Token::Comment> has no descendants.

=head1 DESCRIPTION

This class represents a comment - both parenthesized comments (i.e.
C<< (?# this is a comment ) >> and the /x mode end-of-line comments.

=head1 METHODS

This class provides no public methods beyond those provided by its
superclass.

=cut

package PPIx::Regexp::Token::Comment;

use strict;
use warnings;

use base qw{ PPIx::Regexp::Token };

use PPIx::Regexp::Constant qw{ @CARP_NOT };

our $VERSION = '0.064_02';

# Return true if the token can be quantified, and false otherwise
sub can_be_quantified { return };

sub significant {
    return;
}

sub comment {
    return 1;
}

sub explain {
    return 'Comment';
}

# This must be implemented by tokens which do not recognize themselves.
# The return is a list of list references. Each list reference must
# contain a regular expression that recognizes the token, and optionally
# a reference to a hash to pass to make_token as the class-specific
# arguments. The regular expression MUST be anchored to the beginning of
# the string.
sub __PPIX_TOKEN__recognize {
    return ( [ qr{ \A \( \? \# [^\)]* \) }smx ] );
}

# We anticipate that these tokens will be generated by other classes:
# PPIx::Regexp::Token::Structure for parenthesized comments, and
# PPIx::Regexp::Token::Literal for end-of-line /x mode comments.

=begin comment

sub __PPIX_TOKENIZER__regexp {
    my ( $class, $tokenizer, $character ) = @_;

    return $character eq 'x' ? 1 : 0;
}

=end comment

=cut

1;

__END__

=head1 SUPPORT

Support is by the author. Please file bug reports at
L<http://rt.cpan.org>, or in electronic mail to the author.

=head1 AUTHOR

Thomas R. Wyant, III F<wyant at cpan dot org>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2009-2019 by Thomas R. Wyant, III

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl 5.10.0. For more details, see the full text
of the licenses in the directory LICENSES.

This program is distributed in the hope that it will be useful, but
without any warranty; without even the implied warranty of
merchantability or fitness for a particular purpose.

=cut

# ex: set textwidth=72 :
