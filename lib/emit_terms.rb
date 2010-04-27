#!/usr/bin/env ruby
require "#{File.dirname(__FILE__)}/parse.rb"
for_each_post_from_stdin do |datetime, tweet| 
  tweet.terms.each do |term|
    puts term
  end
end
