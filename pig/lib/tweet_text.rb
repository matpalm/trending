#!/usr/bin/env ruby
require 'rubygems'
require 'json'
require 'time'
require "#{File.dirname(__FILE__)}/../sanitise.rb"
require "#{File.dirname(__FILE__)}/../parse.rb"

min,max = nil
num_tweets = 0
STDIN.each do |line|
  begin
    tweet = JSON::parse(line)
    next unless tweet.has_key? 'text'
    text = tweet['text']
    name = tweet['user']['screen_name']

    time = tweet['created_at']
    timeslot = daily_timeslot_since_epoch_for(DateTime.parse(time), 60)

    puts "#{time}\t#{timeslot}\t#{name}\t#{text.sanitise}"
  rescue Exception => e
    STDERR.puts "FAIL [#{e.message}]"
  end
end

