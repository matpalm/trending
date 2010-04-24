#!/usr/bin/env ruby
raise "usage: tweets_over_day.rb BUCKET_SIZE_IN_MINUTES" unless ARGV.length==1
bucket_size = ARGV.first.to_i
require 'parse'
for_each_post_from_stdin do |datetime, tweet| 
  #puts daily_timeslot_for(datetime, bucket_size)
  puts "#{daily_timeslot_since_epoch_for(datetime, bucket_size)}\t#{datetime}\t#{tweet}"
end
