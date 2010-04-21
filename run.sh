set -ex
zcat /data/twitter/gardenhose/cheese.*.json.gz | ./tweet_text.rb 2>/dev/null > cheese_tweets.tsv
cat cheese_tweets.tsv | ./tweets_per_hour_since_baseline.rb | ./freq.sh > tweets_per_hour_since_baseline.tsv
cat tweets_per_hour_since_baseline.tsv | ./trending.rb > tweets_per_hour_since_baseline.trending.tsv
cat cheese_tweets.tsv | ./tweets_over_day.rb 15 | ./freq.sh | ./trending.rb > tweets_over_day.15.tsv
cat cheese_tweets.tsv | ./tweets_over_week.rb | ./freq.sh | ./trending.rb > tweets_over_week.1.tsv
R --vanilla < generate_images.r


