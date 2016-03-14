#!/usr/bin/perl

use strict;
use warnings;
use Test::More;
use Test::Warnings;

BEGIN {
    use_ok('App::Hours');
    use_ok('App::Hours::Cmd::Add');
    use_ok('App::Hours::Cmd::Stats');
    use_ok('App::Hours::Data');
    use_ok('Text::ANSITable::StyleSet::Hours');
}

diag( "Testing App::Hours $App::Hours::VERSION, Perl $], $^X" );
done_testing();
