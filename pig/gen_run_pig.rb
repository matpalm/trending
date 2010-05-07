#!/usr/bin/env ruby
raise "usage: gen_run_pig.rb start end" unless ARGV.length==2
first,last = ARGV.map(&:to_i)
puts "set -x"
(first..last).each do |i|
  n = sprintf "%03d", i
  n_1 = sprintf "%03d", i+1
  puts "rm fft/#{n} model/#{n_1} trending/#{n}"
  puts "pig -x local -p piggybankjar=piggybank.jar -p root_path=. -p input=#{n} -p output=#{n_1} trending.pig"
end
