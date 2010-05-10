#!/usr/bin/env ruby
require '/home/mat/dev/tweet_utils/lib/tweet_utils.rb'
sanitiser = Sanitiser.new(:duplicate_punctuation_removed, :without_urls)
for_each_tweets_from_stdin do |tweet|
  date = tweet['created_at']
  text = sanitiser.sanitise tweet['text']
  puts [date,text].join("\t")
end
  
