#!/usr/bin/env ruby
require 'trend'
entries = Trend.new
STDIN.each do |record|
  freq, time = record.split
  entries << freq.to_i
  puts [time, freq, entries.mean, entries.min_trending_value].join("\t")
end

