#!/usr/bin/env ruby

=begin
fill in zeros if required
eg
 123 0
 212 1
 123 3
 123 4
turns into
 123 0
 212 1
 0   2
 123 3
 123 4
=end

@last_counter = 0
STDIN.each do |line|
  freq, counter = line.split("\t").map(&:to_i)
  while (@last_counter < counter)
    puts "0\t#{@last_counter}"
    @last_counter += 1
  end
  @last_counter = counter+1
  puts "#{freq}\t#{counter}"
end
