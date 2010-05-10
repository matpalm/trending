#!/usr/bin/env ruby
NGRAM_SIZE = ARGV.length==1 ? ARGV.first.to_i : 2

def emit tuple
  puts "#{tuple.join(" ")}"
end

STDIN.each do |text|

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
