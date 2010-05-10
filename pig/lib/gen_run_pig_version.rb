#!/usr/bin/env ruby 
raise "usage: gen_run_pig_version.rb worknig_dir" unless ARGV.length==1
puts "#!/usr/bin/env bash"
(0..700).each do |i|
  input = sprintf("%03d",i)
  output = sprintf("%03d",i+1)
  puts "time pig -x local -p root_path=#{ARGV[0]} -p input=#{input} -p output=#{output} trending.pig"
end
