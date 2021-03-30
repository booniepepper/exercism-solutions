#!/usr/bin/env perl
use Test2::V0;
use JSON::PP;

use FindBin qw($Bin);
use lib $Bin, "$Bin/local/lib/perl5";

use TwoFer qw(two_fer);

my $C_DATA = do { local $/; decode_json(<DATA>); };
plan 6;

imported_ok qw(two_fer) or bail_out;

for my $case ( @{ $C_DATA->{cases} } ) {
  is $case->{input}{name}
    ? two_fer( $case->{input}{name} )
    : two_fer(),
    $case->{expected}, $case->{description};
}

__DATA__
{
  "exercise": "two-fer",
  "version": "1.2.0",
  "cases": [
    {
      "description": "no name given",
      "property": "twoFer",
      "input": {
        "name": null
      },
      "expected": "One for you, one for me."
    },
    {
      "description": "a name given",
      "property": "twoFer",
      "input": {
        "name": "Alice"
      },
      "expected": "One for Alice, one for me."
    },
    {
      "description": "another name given",
      "property": "twoFer",
      "input": {
        "name": "Bob"
      },
      "expected": "One for Bob, one for me."
    },
    {
      "description": "empty name",
      "property": "twoFer",
      "input": {
        "name": ""
      },
      "expected": "One for you, one for me."
    },
    {
      "description": "zero name",
      "property": "twoFer",
      "input": {
        "name": 0
      },
      "expected": "One for you, one for me."
    }
  ]
}
