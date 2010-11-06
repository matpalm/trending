#!/usr/bin/env ruby
require "#{File.dirname(__FILE__)}/timeslots.rb"
current_slot = nil
current_file = nil

timeslots = TimeSlots.new 24.hours
STDIN.each do |line|
  line.chomp!
  line =~ /(.*?)\t(.*)/
  epoch_time, rest_of_line = $1, $2
  slot = timeslots.timeslot_since_epoch(epoch_time.to_i)
  if (slot != current_slot)
    current_file.close if current_file    
    current_slot = slot
    current_file = File.open(sprintf("chunks/%03d", slot), 'w')
  end
  current_file.puts rest_of_line
end
current_file.close
