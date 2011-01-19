#!/usr/bin/perl

BEGIN { $ENV{TESTING} = 1 }

use strict;
use warnings;
use Test::More tests => 4;

my $module = 'App::Hours';
use_ok( $module );


my $obj = $module->new();

ok( defined $obj, "Check that the class method new returns something" );
ok( $obj->isa('App::Hours'), " and that it is a App::Hours" );

can_ok( $obj, 'method',  " check object can execute method()" );
ok( $obj->method(),      " check object method method()" );
is( $obj->method(), '?', " check object method method()" );

ok( $App::Hours::func(),      " check method func()" );
is( $App::Hours::func(), '?', " check method func()" );
