set -ex
# original dump
zcat /data/twitter/gardenhose/cheese.*.json.gz | ./tweet_text.rb 2>/dev/null > cheese_tweets.tsv

# baseline; with and without trending lines
cat cheese_tweets.tsv | ./tweets_per_hour_since_baseline.rb | ./freq.sh > tweets_per_hour_since_baseline.tsv
cat tweets_per_hour_since_baseline.tsv | ./trending.rb > tweets_per_hour_since_baseline.trending.tsv

# tweets over day, 15m chunks, with trending
cat cheese_tweets.tsv | ./tweets_over_day.rb 15 | ./freq.sh | ./trending.rb > tweets_over_day.15.tsv

# tweets over a week, 1hr chunks, with trending
cat cheese_tweets.tsv | ./tweets_over_week.rb | ./freq.sh | ./trending.rb > tweets_over_week.1.tsv

# tweets over each day, 15 min chunks, NOT AGGREGATED

todo! do per hour since then can overlay with original!!!
cat cheese_tweets.tsv | ./tweets_over_day.rb 15 | uniq -c > tweets_over_day.15.nonaggregated
cat tweets_over_day.15.nonaggregated | ./periodic_trending.rb > tweets.periodic_trending.15m.tsv

# i can has images
R --vanilla < generate_images.r


