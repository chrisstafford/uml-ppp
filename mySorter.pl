#!/usr/bin/perl

# mySorter.pl
# Christopher Stafford
# This program sorts a list from arguments provided at run-time
# mySorter.pl <options> <arguments>
# Options
#   --reverse (-r) sort the list in reverse

use 5.18.2;
use strict;

# assign arguments to an array
my @words;
my $reverse = 0;
my $list = "test";
my $i;

# loop through arguments looking for -r or --reverse
# remove the option from the array and set reverse to 1 if found
for ( $i = 0; $i < @ARGV; $i = $i +1 ) {
    if ( @ARGV[$i] eq "-r" || @ARGV[$i] eq "--reverse" ){
        $reverse = 1;
    } else {
        push @words, @ARGV[$i] . " ";
        }
}

# sort and print list

if ( $reverse == 1 ){
    print reverse sort @words;
} else {
    print sort @words;
}

# print a blank line for asthetic purposes
print "\n"

__END__
