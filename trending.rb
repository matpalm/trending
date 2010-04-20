#!/usr/bin/env ruby
require 'parse'

for_each_post_from_stdin do |tsp|
  time, subject, post = tsp
  terms = post.downcase.gsub("'",'').gsub(/[^a-z0-9#_]/,' ').gsub("/n",' ').split.select {|t| t.length>3}
  timeslot = daily_timeslot_for time
  terms.each { |t| puts "#{timeslot}\t#{t}" }
end
