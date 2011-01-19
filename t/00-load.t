#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 1 + 1;
use Test::NoWarnings;

BEGIN {
	use_ok( 'App::Hours' );
}

diag( "Testing App::Hours $App::Hours::VERSION, Perl $], $^X" );
