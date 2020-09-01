package main;

use strict;
use warnings;

use Test::More 0.88;

BEGIN {
    eval {
	require Test::Pod::Coverage;
	Test::Pod::Coverage->VERSION(1.00);
	Test::Pod::Coverage->import();
	1;
    } or do {
	print <<eod;
1..0 # skip Test::Pod::Coverage 1.00 or greater required.
eod
	exit;
    };
}

foreach ( all_modules() ) {
    pod_coverage_ok ( $_, {
	    also_private => [ qr{^[[:upper:]\d_]+$}, ],
	    coverage_class => 'Pod::Coverage::CountParents'
	}
    );
}

done_testing;

1;
