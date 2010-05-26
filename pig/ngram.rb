#!/usr/bin/env ruby
MAX_NGRAM_LENGTH = ARGV.first.to_i rescue 1
MIN_NGRAM_LENGTH = ARGV.include?('include_shorter') ? 1 : MAX_NGRAM_LENGTH

def emit tuple
  puts "#{tuple.join(" ")}"
end

def emit_all_combos terms, ngram_length
  tuple = []
  ngram_length.times { tuple << terms.shift }
  emit tuple
  while not terms.empty?
    tuple.shift
    tuple << terms.shift
    emit tuple
  end
end

STDIN.each do |text|
  terms = text.split
  (MIN_NGRAM_LENGTH..MAX_NGRAM_LENGTH).each do |ngram_length|
    next if terms.size < ngram_length
    if ngram_length==1
      terms.each { |t| puts t }
    else
      emit_all_combos terms.clone, ngram_length 
    end
  end
end
