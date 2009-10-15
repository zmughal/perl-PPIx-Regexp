=head1 NAME

PPIx::Regexp::Token - Base class for PPIx::Regexp tokens.

=head1 SYNOPSIS

 use PPIx::Regexp::Dumper;
 PPIx::Regexp::Dumper->new( 'qr{foo}' )->print();

=head1 INHERITANCE

 PPIx::Regexp::Token
 isa PPIx::Regexp::Element

=head1 DESCRIPTION

This class represents the base of the class hierarchy for tokens in the
L<PPIx::Regexp|PPIx::Regexp> package.

=head1 METHODS

This class provides the following public methods. Methods not documented
here are private, and unsupported in the sense that the author reserves
the right to change or remove them without notice.

=cut

package PPIx::Regexp::Token;

use strict;
use warnings;

use base qw{PPIx::Regexp::Element};

our $VERSION = '0.000_01';

sub _new {
    my ( $class, $content ) = @_;
    ref $class and $class = ref $class;

    my $self = {
	content => $content,
    };

    bless $self, $class;
    return $self;
}

sub content {
    my ( $self ) = @_;
    return $self->{content};
}

=head2 can_be_quantified

 $token->can_be_quantified()
     and print "This token can be quantified.\n";

This method returns true if the token can be quantified.

=cut

sub can_be_quantified { return 1 };

=head2 is_quantifier

 $token->is_quantifier()
     and print "This token is a quantifier.\n";

This method returns true if the token is a quantifier. You can not tell
this from the token's class, because a right curly bracket may represent
a quantifier for the purposes of figuring out whether a greediness token
is possible.

=cut

sub is_quantifier { return };

# Called after the token is manufactured. The calling sequence is
# $token->__PPIX_TOKEN__post_make( $tokenizer );
sub __PPIX_TOKEN__post_make { return };

# Return true to be included in the token scan. This determination
# should be good for the life of the tokenizer. It is called as a static
# method with two arguments: the tokenizer object and the mode name. Use
# of the latter is pre-deprecated.
sub __PPIX_TOKEN__scan_me { return 1; };

# Called by the lexer once it has done its worst to all the tokens.
# Called as a method with no arguments. The return is the number of
# parse failures discovered when finalizing.
sub __PPIX_LEXER__finalize {
    return 0;
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
