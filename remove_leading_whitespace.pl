#!/usr/bin/env perl
while(<>) {
    s/^\s+//;
    print $_;
}
