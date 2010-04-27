# pig run.sh!

zcat /data/twitter/gardenhose/cheese.*.json.gz | ./tweet_text.rb 2>/dev/null > cheese_tweets.tsv