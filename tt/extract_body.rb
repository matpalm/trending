#!/usr/bin/env ruby
require "#{File.dirname(__FILE__)}/message_sanitisation.rb"

STDIN.each do |line|
  next if line =~ /^messageid/

  msg_id, creation_date, body, place = line.split("\t")
  body = body.sanitise

#  puts "#{msg_id}\t#{creation_date}\t#{body}\t#{place}" unless body.empty?
  puts "#{Time.at(creation_date.to_i/1000)}\t#{body}" unless body.empty?
end
