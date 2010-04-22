set -ex

export file=tweets_over_day.60.trending          
R --vanilla < generate_trending_images.r

export file=tweets_over_day.60.periodic_trending 
R --vanilla < generate_trending_images.r

export file=tweets_over_day.60.periodic_trending.sliding
R --vanilla < generate_trending_images.r

R --vanilla < generate_other_images.r

