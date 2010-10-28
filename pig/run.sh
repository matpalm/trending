# pig run.sh!
source rc

# generate the original dataset
#zcat /data/twitter/gardenhose/cheese.*.json.gz | tweet_text.rb 2>/dev/null > cheese_tweets.tsv

# split into hourly chunks
# these form the input to the algo
mkdir chunks
cat cheese_tweets.tsv | split_into_chunks.rb

# generate script to run pig jobs
gen_run_iterations.rb > run_iterations.sh

# run it!
bootstrap_dir.sh
run_pig_version.sh
