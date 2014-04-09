#!/usr/bin/env perl

use 5.10.0;
use utf8;
use strict;
use autodie;
use warnings qw<  FATAL all     >;
use open     qw< :std  :utf8    >;

use English  qw< -no_match_vars >;

# and the last shall be first
END { close(STDOUT) }

my $filename = "fileio.txt";
my($handle, @lines);

$INPUT_RECORD_SEPARATOR = $OUTPUT_RECORD_SEPARATOR = "\n";

open($handle, ">",  $filename);
print $handle "hello";
close($handle);

open($handle, ">>", $filename);
print $handle "world";
close($handle);

open($handle, "<",  $filename);
chomp(@lines = <$handle>);
close($handle);

print STDOUT $lines[1];
