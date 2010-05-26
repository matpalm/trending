#!/usr/bin/env ruby 
puts "#!/usr/bin/env bash"
(0..700).each do |i|
  input = sprintf("%03d",i)
  output = sprintf("%03d",i+1)
  puts "time pig -x local -p input=#{input} -p output=#{output} -p piggybankjar=/home/mat/dev/pig/piggybank.jar trending.pig"
end
