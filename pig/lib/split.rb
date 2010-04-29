#!/usr/bin/env ruby
#N throw away script to split cheese_tweets.timeslot.sanitised.tsv into a file per timeslot (all 677 otf them)
current_key = nil
current_file = nil
STDIN.each do |line|
  date, key, tweeter, tweet = line.split "\t"
  if (key != current_key)
    current_file.close if current_file    
    current_key = key
    current_file = File.open(sprintf("chunks/%03d", key), 'w')
  end
  current_file.puts tweet
end
current_file.close
