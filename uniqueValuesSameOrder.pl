#!/usr/bin/perl

##########################################
# FileName: uniqueValuesSameOrder.pl
# Description: Generate Unique Values in the Same Order
#
# CreatedBy: Kiran Babu Chinnam on 19-11-2018
# ModifiedBy: Kiran Babu Chinnam on 19-11-2018
##########################################

use strict;
use warnings;

my @A = (1,3,5,6,7,8,5,3,5);
my @B = (1,4,5,6,7,8,9);
my @uniqueS;
my @uniqueM;

print "\n***result start***\n";

##########################################
# === Unique Values from a Single Array ====
##########################################
my %hashS;

@uniqueS = grep { ++$hashS{$_} == 1 } @A;


print "\nUnique Values (Single Array - Same Order):\n";  
print join "\t",@uniqueS,"\n";


##########################################
# === Unique Values from multiple Arrays ====
##########################################

my %hashM;
@uniqueM = grep { ++$hashM{$_} == 1 } @A,@B; 


print "\nUnique Values (Multiple Arrays - Same Order):\n"; 
print join "\t",@uniqueM,"\n";

print "\n\n***result end***\n";
