set -ex
cat 2grams_over_day.test | perl -ne'next unless/^0\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
rm model_n1 calc_min_trending trending; >model
sort nextchunk | uniq -c
pig -x local -param next_block_file=nextchunk trending.pig
sort model_n1
sort calc_min_trending
sort trending
cat 2grams_over_day.test | perl -ne'next unless/^1\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
mv model_n1 model; rm calc_min_trending trending
sort nextchunk | uniq -c
pig -x local -param next_block_file=nextchunk trending.pig
sort model_n1
sort calc_min_trending
sort trending
cat 2grams_over_day.test | perl -ne'next unless/^2\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
mv model_n1 model; rm calc_min_trending trending
sort nextchunk | uniq -c
pig -x local -param next_block_file=nextchunk trending.pig
sort model_n1
sort calc_min_trending
sort trending
cat 2grams_over_day.test | perl -ne'next unless/^3\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
mv model_n1 model; rm calc_min_trending trending
sort nextchunk | uniq -c
pig -x local -param next_block_file=nextchunk trending.pig
sort model_n1
sort calc_min_trending
sort trending
cat 2grams_over_day.test | perl -ne'next unless/^4\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
mv model_n1 model; rm calc_min_trending trending
sort nextchunk | uniq -c
pig -x local -param next_block_file=nextchunk trending.pig
sort model_n1
sort calc_min_trending
sort trending
cat 2grams_over_day.test | perl -ne'next unless/^5\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
mv model_n1 model; rm calc_min_trending trending
sort nextchunk | uniq -c
pig -x local -param next_block_file=nextchunk trending.pig
sort model_n1
sort calc_min_trending
sort trending
cat 2grams_over_day.test | perl -ne'next unless/^6\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
mv model_n1 model; rm calc_min_trending trending
sort nextchunk | uniq -c
pig -x local -param next_block_file=nextchunk trending.pig
sort model_n1
sort calc_min_trending
sort trending
cat 2grams_over_day.test | perl -ne'next unless/^7\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
mv model_n1 model; rm calc_min_trending trending
sort nextchunk | uniq -c
pig -x local -param next_block_file=nextchunk trending.pig
sort model_n1
sort calc_min_trending
sort trending
cat 2grams_over_day.test | perl -ne'next unless/^8\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
mv model_n1 model; rm calc_min_trending trending
sort nextchunk | uniq -c
pig -x local -param next_block_file=nextchunk trending.pig
sort model_n1
sort calc_min_trending
sort trending
cat 2grams_over_day.test | perl -ne'next unless/^9\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
mv model_n1 model; rm calc_min_trending trending
sort nextchunk | uniq -c
pig -x local -param next_block_file=nextchunk trending.pig
sort model_n1
sort calc_min_trending
sort trending
cat 2grams_over_day.test | perl -ne'next unless/^10\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
mv model_n1 model; rm calc_min_trending trending
sort nextchunk | uniq -c
pig -x local -param next_block_file=nextchunk trending.pig
sort model_n1
sort calc_min_trending
sort trending
cat 2grams_over_day.test | perl -ne'next unless/^11\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
mv model_n1 model; rm calc_min_trending trending
sort nextchunk | uniq -c
pig -x local -param next_block_file=nextchunk trending.pig
sort model_n1
sort calc_min_trending
sort trending
cat 2grams_over_day.test | perl -ne'next unless/^12\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
mv model_n1 model; rm calc_min_trending trending
sort nextchunk | uniq -c
pig -x local -param next_block_file=nextchunk trending.pig
sort model_n1
sort calc_min_trending
sort trending
cat 2grams_over_day.test | perl -ne'next unless/^13\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
mv model_n1 model; rm calc_min_trending trending
sort nextchunk | uniq -c
pig -x local -param next_block_file=nextchunk trending.pig
sort model_n1
sort calc_min_trending
sort trending
cat 2grams_over_day.test | perl -ne'next unless/^14\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
mv model_n1 model; rm calc_min_trending trending
sort nextchunk | uniq -c
pig -x local -param next_block_file=nextchunk trending.pig
sort model_n1
sort calc_min_trending
sort trending
