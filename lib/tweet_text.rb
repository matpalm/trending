#!/usr/bin/env ruby
require 'rubygems'
require 'json'
require 'time'

min,max = nil
num_tweets = 0
STDIN.each do |line|
  begin
    tweet = JSON::parse(line)
    next unless tweet.has_key? 'text'
    text = tweet['text']
    #name = tweet['user']['screen_name']
    time = tweet['created_at']
    puts "#{time}\t#{text.downcase.gsub(/\n/,' ').gsub(/\t/,' ').gsub(/\s+/,' ')}"
  rescue Exception => e
    STDERR.puts "FAIL [#{e.message}]"
  end
end

