#!/usr/bin/env ruby
raise "usage: terms_over_day.rb BUCKET_SIZE_IN_MINUTES" unless ARGV.length==1
bucket_size = ARGV.first.to_i
require 'parse'
for_each_post_from_stdin do |datetime, tweet| 
  timeslot = daily_timeslot_for(datetime, bucket_size)
  tweet.terms do |term|
    puts "#{term}\t#{timeslot}"
  end
end
