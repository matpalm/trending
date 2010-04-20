set -ex

# original dump
#zcat /data/twitter/gardenhose/cheese.*.json.gz | ./tweet_text.rb 2>/dev/null > cheese_tweets.tsv
#cat cheese_tweets.tsv | ./tweets_per_hour_since_baseline.rb | sort -n | uarlws.sh > tweets_per_hour_since_baseline.tsv

R --vanilla < generate_images.r


