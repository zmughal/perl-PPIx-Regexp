package main;

use 5.006;

use strict;
use warnings;

use lib qw{ inc };

use PPIx::Regexp::Test;

# NOTE: It is intended that all individual tests in this file be
# generated by PPIx::Regexp::Dumper. Special tests should go in
# t/unit.t.

tokenize( '\'\'', parse => 'string' );
count   ( 3 );
choose  ( 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( '' );
choose  ( 1 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '\'' );
choose  ( 2 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '\'' );

parse   ( '\'\'', parse => 'string' );
value   ( failures => [], 0 );
class   ( 'PPIx::Regexp' );
count   ( 2 );
choose  ( child => 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( '' );
choose  ( child => 1 );
class   ( 'PPIx::Regexp::Structure::Replacement' );
count   ( 0 );
choose  ( child => 1, start => [] );
count   ( 1 );
choose  ( child => 1, start => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '\'' );
choose  ( child => 1, type => [] );
count   ( 0 );
choose  ( child => 1, finish => [] );
count   ( 1 );
choose  ( child => 1, finish => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '\'' );

tokenize( '"x"', parse => 'string' );
count   ( 4 );
choose  ( 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( '' );
choose  ( 1 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '"' );
choose  ( 2 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'x' );
choose  ( 3 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '"' );

parse   ( '"x"', parse => 'string' );
value   ( failures => [], 0 );
class   ( 'PPIx::Regexp' );
count   ( 2 );
choose  ( child => 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( '' );
choose  ( child => 1 );
class   ( 'PPIx::Regexp::Structure::Replacement' );
count   ( 1 );
choose  ( child => 1, start => [] );
count   ( 1 );
choose  ( child => 1, start => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '"' );
choose  ( child => 1, type => [] );
count   ( 0 );
choose  ( child => 1, finish => [] );
count   ( 1 );
choose  ( child => 1, finish => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '"' );
choose  ( child => 1, child => 0 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'x' );

tokenize( '`$x`', parse => 'string' );
count   ( 4 );
choose  ( 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( '' );
choose  ( 1 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '`' );
choose  ( 2 );
class   ( 'PPIx::Regexp::Token::Interpolation' );
content ( '$x' );
choose  ( 3 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '`' );

parse   ( '`$x`', parse => 'string' );
value   ( failures => [], 0 );
class   ( 'PPIx::Regexp' );
count   ( 2 );
choose  ( child => 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( '' );
choose  ( child => 1 );
class   ( 'PPIx::Regexp::Structure::Replacement' );
count   ( 1 );
choose  ( child => 1, start => [] );
count   ( 1 );
choose  ( child => 1, start => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '`' );
choose  ( child => 1, type => [] );
count   ( 0 );
choose  ( child => 1, finish => [] );
count   ( 1 );
choose  ( child => 1, finish => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '`' );
choose  ( child => 1, child => 0 );
class   ( 'PPIx::Regexp::Token::Interpolation' );
content ( '$x' );

tokenize( 'q{$x}', parse => 'string' );
count   ( 5 );
choose  ( 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( 'q' );
choose  ( 1 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '{' );
choose  ( 2 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( '$' );
choose  ( 3 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'x' );
choose  ( 4 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '}' );

parse   ( 'q{$x}', parse => 'string' );
value   ( failures => [], 0 );
class   ( 'PPIx::Regexp' );
count   ( 2 );
choose  ( child => 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( 'q' );
choose  ( child => 1 );
class   ( 'PPIx::Regexp::Structure::Replacement' );
count   ( 2 );
choose  ( child => 1, start => [] );
count   ( 1 );
choose  ( child => 1, start => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '{' );
choose  ( child => 1, type => [] );
count   ( 0 );
choose  ( child => 1, finish => [] );
count   ( 1 );
choose  ( child => 1, finish => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '}' );
choose  ( child => 1, child => 0 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( '$' );
choose  ( child => 1, child => 1 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'x' );

tokenize( 'qq<foo${x}bar>', parse => 'string' );
count   ( 10 );
choose  ( 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( 'qq' );
choose  ( 1 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '<' );
choose  ( 2 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'f' );
choose  ( 3 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'o' );
choose  ( 4 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'o' );
choose  ( 5 );
class   ( 'PPIx::Regexp::Token::Interpolation' );
content ( '${x}' );
choose  ( 6 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'b' );
choose  ( 7 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'a' );
choose  ( 8 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'r' );
choose  ( 9 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '>' );

parse   ( 'qq<foo${x}bar>', parse => 'string' );
value   ( failures => [], 0 );
class   ( 'PPIx::Regexp' );
count   ( 2 );
choose  ( child => 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( 'qq' );
choose  ( child => 1 );
class   ( 'PPIx::Regexp::Structure::Replacement' );
count   ( 7 );
choose  ( child => 1, start => [] );
count   ( 1 );
choose  ( child => 1, start => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '<' );
choose  ( child => 1, type => [] );
count   ( 0 );
choose  ( child => 1, finish => [] );
count   ( 1 );
choose  ( child => 1, finish => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '>' );
choose  ( child => 1, child => 0 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'f' );
choose  ( child => 1, child => 1 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'o' );
choose  ( child => 1, child => 2 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'o' );
choose  ( child => 1, child => 3 );
class   ( 'PPIx::Regexp::Token::Interpolation' );
content ( '${x}' );
choose  ( child => 1, child => 4 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'b' );
choose  ( child => 1, child => 5 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'a' );
choose  ( child => 1, child => 6 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'r' );

tokenize( 'qx{$x}', parse => 'string' );
count   ( 4 );
choose  ( 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( 'qx' );
choose  ( 1 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '{' );
choose  ( 2 );
class   ( 'PPIx::Regexp::Token::Interpolation' );
content ( '$x' );
choose  ( 3 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '}' );

parse   ( 'qx{$x}', parse => 'string' );
value   ( failures => [], 0 );
class   ( 'PPIx::Regexp' );
count   ( 2 );
choose  ( child => 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( 'qx' );
choose  ( child => 1 );
class   ( 'PPIx::Regexp::Structure::Replacement' );
count   ( 1 );
choose  ( child => 1, start => [] );
count   ( 1 );
choose  ( child => 1, start => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '{' );
choose  ( child => 1, type => [] );
count   ( 0 );
choose  ( child => 1, finish => [] );
count   ( 1 );
choose  ( child => 1, finish => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '}' );
choose  ( child => 1, child => 0 );
class   ( 'PPIx::Regexp::Token::Interpolation' );
content ( '$x' );

tokenize( 'qx\'$x\'', parse => 'string' );
count   ( 5 );
choose  ( 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( 'qx' );
choose  ( 1 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '\'' );
choose  ( 2 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( '$' );
choose  ( 3 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'x' );
choose  ( 4 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '\'' );

parse   ( 'qx\'$x\'', parse => 'string' );
value   ( failures => [], 0 );
class   ( 'PPIx::Regexp' );
count   ( 2 );
choose  ( child => 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( 'qx' );
choose  ( child => 1 );
class   ( 'PPIx::Regexp::Structure::Replacement' );
count   ( 2 );
choose  ( child => 1, start => [] );
count   ( 1 );
choose  ( child => 1, start => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '\'' );
choose  ( child => 1, type => [] );
count   ( 0 );
choose  ( child => 1, finish => [] );
count   ( 1 );
choose  ( child => 1, finish => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( '\'' );
choose  ( child => 1, child => 0 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( '$' );
choose  ( child => 1, child => 1 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'x' );

tokenize( '<<EOD
$x
EOD
', parse => 'string' );
count   ( 5 );
choose  ( 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( '<<' );
choose  ( 1 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( "EOD\n" );
choose  ( 2 );
class   ( 'PPIx::Regexp::Token::Interpolation' );
content ( '$x' );
choose  ( 3 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( "\n" );
choose  ( 4 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( "EOD\n" );

parse   ( '<<EOD
$x
EOD
', parse => 'string' );
value   ( failures => [], 0 );
class   ( 'PPIx::Regexp' );
count   ( 2 );
choose  ( child => 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( '<<' );
choose  ( child => 1 );
class   ( 'PPIx::Regexp::Structure::Replacement' );
count   ( 2 );
choose  ( child => 1, start => [] );
count   ( 1 );
choose  ( child => 1, start => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( "EOD\n" );
choose  ( child => 1, type => [] );
count   ( 0 );
choose  ( child => 1, finish => [] );
count   ( 1 );
choose  ( child => 1, finish => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( "EOD\n" );
choose  ( child => 1, child => 0 );
class   ( 'PPIx::Regexp::Token::Interpolation' );
content ( '$x' );
choose  ( child => 1, child => 1 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( "\n" );

tokenize( '<< "EOD"
$x
EOD
', parse => 'string' );
count   ( 6 );
choose  ( 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( '<<' );
choose  ( 1 );
class   ( 'PPIx::Regexp::Token::Whitespace' );
content ( ' ' );
choose  ( 2 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( qq{"EOD"\n} );
choose  ( 3 );
class   ( 'PPIx::Regexp::Token::Interpolation' );
content ( '$x' );
choose  ( 4 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( "\n" );
choose  ( 5 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( "EOD\n" );

parse   ( '<< "EOD"
$x
EOD
', parse => 'string' );
value   ( failures => [], 0 );
class   ( 'PPIx::Regexp' );
count   ( 3 );
choose  ( child => 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( '<<' );
choose  ( child => 1 );
class   ( 'PPIx::Regexp::Token::Whitespace' );
content ( ' ' );
choose  ( child => 2 );
class   ( 'PPIx::Regexp::Structure::Replacement' );
count   ( 2 );
choose  ( child => 2, start => [] );
count   ( 1 );
choose  ( child => 2, start => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( qq{"EOD"\n} );
choose  ( child => 2, type => [] );
count   ( 0 );
choose  ( child => 2, finish => [] );
count   ( 1 );
choose  ( child => 2, finish => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( "EOD\n" );
choose  ( child => 2, child => 0 );
class   ( 'PPIx::Regexp::Token::Interpolation' );
content ( '$x' );
choose  ( child => 2, child => 1 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( "\n" );

tokenize( '<< \'EOD\'
$x
EOD
', parse => 'string' );
count   ( 7 );
choose  ( 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( '<<' );
choose  ( 1 );
class   ( 'PPIx::Regexp::Token::Whitespace' );
content ( ' ' );
choose  ( 2 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( "'EOD'\n" );
choose  ( 3 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( '$' );
choose  ( 4 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'x' );
choose  ( 5 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( "\n" );
choose  ( 6 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( "EOD\n" );

parse   ( '<< \'EOD\'
$x
EOD
', parse => 'string' );
value   ( failures => [], 0 );
class   ( 'PPIx::Regexp' );
count   ( 3 );
choose  ( child => 0 );
class   ( 'PPIx::Regexp::Token::Structure' );
content ( '<<' );
choose  ( child => 1 );
class   ( 'PPIx::Regexp::Token::Whitespace' );
content ( ' ' );
choose  ( child => 2 );
class   ( 'PPIx::Regexp::Structure::Replacement' );
count   ( 3 );
choose  ( child => 2, start => [] );
count   ( 1 );
choose  ( child => 2, start => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( "'EOD'\n" );
choose  ( child => 2, type => [] );
count   ( 0 );
choose  ( child => 2, finish => [] );
count   ( 1 );
choose  ( child => 2, finish => 0 );
class   ( 'PPIx::Regexp::Token::Delimiter' );
content ( "EOD\n" );
choose  ( child => 2, child => 0 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( '$' );
choose  ( child => 2, child => 1 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( 'x' );
choose  ( child => 2, child => 2 );
class   ( 'PPIx::Regexp::Token::Literal' );
content ( "\n" );

done_testing;

1;

# ex: set textwidth=72 :
