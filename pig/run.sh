# pig run.sh!

source rc

# generate the original dataset
zcat /data/twitter/gardenhose/cheese.*.json.gz | tweet_text.rb 2>/dev/null > cheese_tweets.tsv

# split into hourly chunks
# these form the input to the algo
mkdir chunks
cat cheese_tweets.tsv | split.rb

# generate script to run pig jobs
gen_run_pig_version.rb > run_pig_version.sh

# run it!
run_pig_version.sh