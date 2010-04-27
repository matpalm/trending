#!/usr/bin/env ruby 

puts "set -x"
puts "rm model.* calc_min_trending.model* trending.model*"

(21..50).each do |i|
  model_in = sprintf("model.%03d",i)
  model_out = sprintf("model.%03d",i+1)
  next_chunk = sprintf("chunks/%03d",i)
  puts "touch #{model_in}"
  puts "time pig -x local -param model_in=#{model_in} -param model_out=#{model_out} -param next_chunk=#{next_chunk} trending.pig"
  #puts "sort calc_min_trending.#{model_in}"
  puts "wc -l trending.#{model_in}"
  #puts "sort #{model_out}"
end
