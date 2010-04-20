#!/usr/bin/env ruby
require 'parse'
for_each_post_from_stdin do |datetime, tweet|
  days =  days_since_base_line datetime	
  hours = (days * 24).to_i
  puts hours
end
