#!/usr/bin/env ruby
NGRAM_SIZE = 3

def emit tuple
  puts "#{@key}\t#{tuple.join(" ")}"
end

STDIN.each do |record|
  key, text = record.split("\t")
  @key = key
  
  terms = text.split
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
