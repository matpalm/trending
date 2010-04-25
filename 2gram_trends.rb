#!/usr/bin/env ruby

def cmd two_gram, opts
  terms = two_gram.split
  cmd = "cat 2grams_over_day | "
  cmd += "grep -P '\\t" + terms.join("\\t") + "$' | first_number_column.pl | uniq -c | clean_whitespace.sh | "
  cmd += "fill_in_zeros.rb | " if opts[:with_zero_fill]
  cmd += "trending.rb > "
  cmd += "tweets_over_day.60." + terms.join('') + (opts[:with_zero_fill] ? ".withzerofill":"") + ".trending.tsv"
  puts cmd
  puts `#{cmd}`  
end


['grilled cheese', 'cream cheese', 'goats cheese', 'apple juice','hot salad'].each do |two_gram|
  cmd two_gram, :with_zero_fill => true
  cmd two_gram, :with_zero_fill => false
end

