#!/usr/bin/env ruby
require 'parse'
for_each_post_from_stdin do |datetime, tweet| 
  tweet.terms.each do |term|
    puts term
  end
end