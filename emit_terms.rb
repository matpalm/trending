#!/usr/bin/env ruby
require 'parse'
for_each_post_from_stdin do |time, subject, post|
  post.terms.each { |t| puts t }
end
