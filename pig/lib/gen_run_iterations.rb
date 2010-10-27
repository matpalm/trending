#!/usr/bin/env ruby
NUM = ARGV.length==1 ? ARGV.first.to_i : 10
require "#{File.dirname(__FILE__)}/run_iteration.rb"
puts "#!/usr/bin/env bash"
(0..NUM).each { |i| puts cmd_for_iter(i) }
