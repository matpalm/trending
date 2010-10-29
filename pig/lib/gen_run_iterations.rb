#!/usr/bin/env ruby
NUM_CHUNKS = Dir.glob('chunks/*').size
raise "expected at least one file in chunks dir" unless NUM_CHUNKS > 1
require "#{File.dirname(__FILE__)}/run_iteration.rb"
puts "#!/usr/bin/env bash"
puts "set -ex"
(0..NUM_CHUNKS).each { |i| puts cmd_for_iter(i) }

