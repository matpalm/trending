#!/usr/bin/env ruby
require 'trend'

x = []
[3,4,5,6].each do |i|
  x << i
  puts x.inspect
end

exit 0

BASELINE = DateTime.parse 'Mon Jan 25 10:22:59 +0000 2010'
def days_since_base_line datetime
  datetime - BASELINE
end

STDIN.each do |record|
  datetime_str, tweet = record.strip.split("\t")      
  datetime = DateTime.parse datetime_str
  days =  days_since_base_line datetime	
  hours = days * 24
  minutes = hours * 60
  seconds = minutes * 60
  puts [seconds,datetime_str,tweet].join("\t")
end
