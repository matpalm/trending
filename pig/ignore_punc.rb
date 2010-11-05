#!/usr/bin/env ruby
# drop tokens that are just punc; eg ,.!? etc
# reassemble ["can","'","t"] into ["can't"]

require 'set'

ignore = Set.new [',','.','!','?',':',';','"']
input = STDIN.map(&:chomp).select{|t| !ignore.include?(t)}

output = []
while (not input.empty?)
  iter = input.shift
  if iter=="'"
    raise "aphostrophe as first" if output.empty?
    raise "aphostrophe as last" if input.empty?
    last_added = output.pop
    next_to_add = input.shift
    output <<  "#{last_added}'#{next_to_add}"
  else
    output << iter
  end
end

puts output.join("\n")
