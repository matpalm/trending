#!/usr/bin/env ruby
require "#{File.dirname(__FILE__)}/message_sanitisation.rb"

STDIN.each do |line|
  next if line =~ /^messageid/

  msg_id, creation_date, body, place = line.split("\t")
  body = body.sanitise

  puts [creation_date.to_i/1000, msg_id, body].join("\t") unless body.empty?
end
