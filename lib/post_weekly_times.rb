#!/usr/bin/env ruby
require "#{File.dirname(__FILE__)}/parse.rb"
for_each_post_from_stdin do |time, subject, post|
  puts weekly_timeslot_for time
end
