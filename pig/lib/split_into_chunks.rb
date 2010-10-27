#!/usr/bin/env ruby
require "#{File.dirname(__FILE__)}/timeslots.rb"
current_slot = nil
current_file = nil

timeslots = TimeSlots.new 1.hours
STDIN.each do |line|
  datetime, text = line.chomp.split("\t")
  slot = timeslots.timeslot_since_epoch(datetime)
  if (slot != current_slot)
    current_file.close if current_file    
    current_slot = slot
    current_file = File.open(sprintf("chunks/%03d", slot), 'w')
  end
  current_file.puts text
end
current_file.close
