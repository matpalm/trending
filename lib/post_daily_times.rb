#!/usr/bin/env ruby
require 'parse'
for_each_post_from_stdin do |time, subject, post| 
  puts weekly_timeslot_for time
end
