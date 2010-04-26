#!/usr/bin/env ruby 

puts "set -x"
puts "rm model.* calc_min_trending.model* trending.model*"
puts "> model.00"

(0..14).each do |i|
  model_in = sprintf("model.%02d",i)
  model_out = sprintf("model.%02d",i+1)
  puts 'cat 2grams_over_day.test | perl -ne\'next unless/^' + i.to_s + '\t/;s/^\d+\t//;s/\t/ /g;print $_\' >nextchunk'
  puts "sort nextchunk | uniq -c"
  puts "pig -x local -param model_in=#{model_in} -param model_out=#{model_out} -param next_chunk=nextchunk trending.pig"
  puts "sort calc_min_trending.#{model_in}"
  puts "cat trending.#{model_in}"
  puts "sort #{model_out}"
end
