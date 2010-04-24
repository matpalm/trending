#!/usr/bin/env ruby

['grilled cheese', 'cream cheese', 'goats cheese', 'apple juice'].each do |two_gram|
  terms = two_gram.split
  cmd = "cat 2grams_over_day | "
  cmd += "grep -P '\\t" + terms.join("\\t") + "$' | first_number_column.pl | uniq -c | clean_whitespace.sh | "
#  cmd += "fill_in_zeros.rb | "
  cmd += "trending.rb > "
  cmd += "tweets_over_day.60." + terms.join('') + ".trending.tsv"
  puts cmd
  puts `#{cmd}`
end

