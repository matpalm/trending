set -ex
# original dump
zcat /data/twitter/gardenhose/cheese.*.json.gz | ./tweet_text.rb 2>/dev/null > cheese_tweets.tsv

# baseline; with and without trending lines
# todo: don't need tweets_per_hour_since_baseline.tsv, can just use tweets_over_day 60 | uniq -c
cat cheese_tweets.tsv | ./tweets_over_day.rb 60 | uniq -c | ./clean_whitepage.sh > tweets_over_day.60.nonaggregated
cat tweets_over_day.60.nonaggregated | ./trending.rb > tweets_over_day.60.trending.tsv


# tweets over day, 15m chunks, with trending
cat cheese_tweets.tsv | ./tweets_over_day.rb 15 | sort -n | uniq -c | clean_whitespace.sh | ./trending.rb > tweets_over_day.15.tsv

# tweets over a week, 1hr chunks, with trending
cat cheese_tweets.tsv | ./tweets_over_week.rb | sort -n | uniq -c | clean_whitespace.sh | ./trending.rb > tweets_over_week.1.tsv

# tweets over each day, 15 min chunks, NOT AGGREGATED per day
#printf "idx\tfreq\tmean\tmin_trend\ttimeslot\n" > tweets_over_day.60.periodic_trending.tsv
cat tweets_over_day.60.nonaggregated | ./periodic_trending.rb > tweets_over_day.60.periodic_trending.tsv
cat tweets_over_day.60.nonaggregated | ./periodic_trending.rb sliding > tweets_over_day.60.periodic_trending.sliding.tsv

# i can has images
generate_images.sh



