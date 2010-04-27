#!/usr/bin/env ruby
require "#{File.dirname(__FILE__)}/trend.rb"
entries_per_timeslot = {}
plot_idx = 0 # can't use timeslot directly this time
STDIN.each do |record|
  freq, timeslot = record.split

  entries = entries_per_timeslot[timeslot]
  if entries.nil?
    entries = Trend.new
    entries_per_timeslot[timeslot] = entries
  end

  entries << freq.to_i
  puts [plot_idx, freq, entries.mean, entries.min_trending_value, timeslot].join("\t")
  
  plot_idx += 1
end

