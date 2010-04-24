set -ex
source rc

# original dump
zcat /data/twitter/gardenhose/cheese.*.json.gz | tweet_text.rb 2>/dev/null > cheese_tweets.tsv

# baseline; with and without trending lines
# todo: don't need tweets_per_hour_since_baseline.tsv, can just use tweets_over_day 60 | uniq -c
cat cheese_tweets.tsv | tweets_over_day.rb 60 | uniq -c | clean_whitepage.sh > tweets_over_day.60.nonaggregated
cat tweets_over_day.60.nonaggregated | trending.rb > tweets_over_day.60.trending.tsv

# tweets over day, 15m chunks, with trending
cat cheese_tweets.tsv | tweets_over_day.rb 15 | sort -n | uniq -c | clean_whitespace.sh | trending.rb > tweets_over_day.15.tsv

# tweets over a week, 1hr chunks, with trending
cat cheese_tweets.tsv | tweets_over_week.rb | sort -n | uniq -c | clean_whitespace.sh | trending.rb > tweets_over_week.1.tsv

# tweets over each day, 15 min chunks, NOT AGGREGATED per day
#printf "idx\tfreq\tmean\tmin_trend\ttimeslot\n" > tweets_over_day.60.periodic_trending.tsv
cat tweets_over_day.60.nonaggregated | periodic_trending.rb > tweets_over_day.60.periodic_trending.tsv
cat tweets_over_day.60.nonaggregated | periodic_trending.rb sliding > tweets_over_day.60.periodic_trending.sliding.tsv

# i can haz images
generate_images.sh

# general n-gram setup
let split=num_lines/4
split -l $split cheese_tweets.tsv
echo "" >> xad # in case of mad rounding

# 2grams
cat xaa | emit_ngrams.rb 2 > xaa.2grams &
cat xab | emit_ngrams.rb 2 > xab.2grams &
cat xac | emit_ngrams.rb 2 > xac.2grams &
cat xad | emit_ngrams.rb 2 > xad.2grams &
sort -m xa[abcd].2grams | uniq -c > terms.2grams.freq

# 3grams
cat xaa | emit_ngrams.rb 3 > xaa.3grams &
cat xab | emit_ngrams.rb 3 > xab.3grams &
cat xac | emit_ngrams.rb 3 > xac.3grams &
cat xad | emit_ngrams.rb 3 > xad.3grams &
sort -m xa[abcd].3grams | uniq -c > terms.3grams.freq

# clean up
rm xa[abcd]*