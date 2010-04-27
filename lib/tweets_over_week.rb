#!/usr/bin/env ruby
require "#{File.dirname(__FILE__)}/parse.rb"
for_each_post_from_stdin do |datetime, tweet| 
  puts weekly_timeslot_for datetime, 60
end
