n#!/usr/bin/env ruby
raise "usage: ./emit_ngrams.rb NGRAM_SIZE" unless ARGV.length==1
NGRAM_SIZE = ARGV.first.to_i

def emit tuple
  puts tuple.join("\t")
end

require 'parse'
for_each_post_from_stdin do |datetime, tweet| 

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
