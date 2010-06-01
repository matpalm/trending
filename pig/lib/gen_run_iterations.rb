#!/usr/bin/env ruby 
require "#{File.dirname(__FILE__)}/run_iteration.rb"
puts "#!/usr/bin/env bash"
(0..700).each { |i| puts cmd_for_iter(i) }
