#!/usr/bin/env ruby
raise "usage: ./emit_ngrams.rb NGRAM_SIZE BUCKET_SIZE_IN_MINUTES" unless ARGV.length==2
NGRAM_SIZE, BUCKET_SIZE = ARGV.map(&:to_i)
require 'parse'

def emit tuple
  puts ([@timeslot] + tuple).join("\t")
end

for_each_post_from_stdin do |datetime, tweet| 

  @timeslot = daily_timeslot_for(datetime, BUCKET_SIZE)

  terms = tweet.terms
  next if terms.size < NGRAM_SIZE

  tuple = []
  NGRAM_SIZE.times { tuple << terms.shift }
  emit tuple

  while not terms.empty?
    tuple.shift
    tuple << terms.shift
    emit tuple
  end

end
