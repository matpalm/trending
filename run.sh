set -ex

INPUT=msgs_1k.csv
#INPUT=msgs_200k.16.csv

cat $INPUT | ./post_daily_times.rb | sort | uniq -c | ./remove_leading_whitespace.pl > times.daily.tsv
cat $INPUT | ./post_weekly_times.rb | sort | uniq -c | ./remove_leading_whitespace.pl > times.weekly.tsv

#R --vanilla < generate_images.r

cat $INPUT | ./emit_terms.rb | sort | uniq -c | ./remove_leading_whitespace.pl > term_freqs.ssv

# todo

approaches
- is there enough variance to bother comparing to this time yesterday / last week 
- mean of value +/- 2 stddevs...
 
simple version first
 - build model based on a range of data, say 20 chunks
 - compare new chunk to mean +/- 2 std dev from chunks
 
 - how to calculate mean/stddev in pig?
 - do in ruby first to ensure we know what we're doing first...
 