#!/usr/bin/env ruby 

puts "set -ex"

(0..14).each do |i|
  puts 'cat 2grams_over_day.test | perl -ne\'next unless/^' + i.to_s + '\t/;s/^\d+\t//;s/\t/ /g;print $_\' >nextchunk'

  if i == 0
    puts "rm model_n1 calc_min_trending trending; >model"
  else
    puts "mv model_n1 model; rm calc_min_trending trending"
  end

  puts "sort nextchunk | uniq -c"
  puts "pig -x local -param next_block_file=nextchunk trending.pig"
  puts "sort model_n1"
  puts "sort calc_min_trending"
  puts "sort trending"
end
