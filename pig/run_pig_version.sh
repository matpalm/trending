set -x
rm model.* calc_min_trending.model* trending.model*
> model.00
cat 2grams_over_day.test | perl -ne'next unless/^0\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
sort nextchunk | uniq -c
pig -x local -param model_in=model.00 -param model_out=model.01 -param next_chunk=nextchunk trending.pig
sort calc_min_trending.model.00
trending.model.00
sort model.01
cat 2grams_over_day.test | perl -ne'next unless/^1\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
sort nextchunk | uniq -c
pig -x local -param model_in=model.01 -param model_out=model.02 -param next_chunk=nextchunk trending.pig
sort calc_min_trending.model.01
trending.model.01
sort model.02
cat 2grams_over_day.test | perl -ne'next unless/^2\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
sort nextchunk | uniq -c
pig -x local -param model_in=model.02 -param model_out=model.03 -param next_chunk=nextchunk trending.pig
sort calc_min_trending.model.02
trending.model.02
sort model.03
cat 2grams_over_day.test | perl -ne'next unless/^3\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
sort nextchunk | uniq -c
pig -x local -param model_in=model.03 -param model_out=model.04 -param next_chunk=nextchunk trending.pig
sort calc_min_trending.model.03
trending.model.03
sort model.04
cat 2grams_over_day.test | perl -ne'next unless/^4\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
sort nextchunk | uniq -c
pig -x local -param model_in=model.04 -param model_out=model.05 -param next_chunk=nextchunk trending.pig
sort calc_min_trending.model.04
trending.model.04
sort model.05
cat 2grams_over_day.test | perl -ne'next unless/^5\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
sort nextchunk | uniq -c
pig -x local -param model_in=model.05 -param model_out=model.06 -param next_chunk=nextchunk trending.pig
sort calc_min_trending.model.05
trending.model.05
sort model.06
cat 2grams_over_day.test | perl -ne'next unless/^6\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
sort nextchunk | uniq -c
pig -x local -param model_in=model.06 -param model_out=model.07 -param next_chunk=nextchunk trending.pig
sort calc_min_trending.model.06
trending.model.06
sort model.07
cat 2grams_over_day.test | perl -ne'next unless/^7\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
sort nextchunk | uniq -c
pig -x local -param model_in=model.07 -param model_out=model.08 -param next_chunk=nextchunk trending.pig
sort calc_min_trending.model.07
trending.model.07
sort model.08
cat 2grams_over_day.test | perl -ne'next unless/^8\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
sort nextchunk | uniq -c
pig -x local -param model_in=model.08 -param model_out=model.09 -param next_chunk=nextchunk trending.pig
sort calc_min_trending.model.08
trending.model.08
sort model.09
cat 2grams_over_day.test | perl -ne'next unless/^9\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
sort nextchunk | uniq -c
pig -x local -param model_in=model.09 -param model_out=model.10 -param next_chunk=nextchunk trending.pig
sort calc_min_trending.model.09
trending.model.09
sort model.10
cat 2grams_over_day.test | perl -ne'next unless/^10\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
sort nextchunk | uniq -c
pig -x local -param model_in=model.10 -param model_out=model.11 -param next_chunk=nextchunk trending.pig
sort calc_min_trending.model.10
trending.model.10
sort model.11
cat 2grams_over_day.test | perl -ne'next unless/^11\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
sort nextchunk | uniq -c
pig -x local -param model_in=model.11 -param model_out=model.12 -param next_chunk=nextchunk trending.pig
sort calc_min_trending.model.11
trending.model.11
sort model.12
cat 2grams_over_day.test | perl -ne'next unless/^12\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
sort nextchunk | uniq -c
pig -x local -param model_in=model.12 -param model_out=model.13 -param next_chunk=nextchunk trending.pig
sort calc_min_trending.model.12
trending.model.12
sort model.13
cat 2grams_over_day.test | perl -ne'next unless/^13\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
sort nextchunk | uniq -c
pig -x local -param model_in=model.13 -param model_out=model.14 -param next_chunk=nextchunk trending.pig
sort calc_min_trending.model.13
trending.model.13
sort model.14
cat 2grams_over_day.test | perl -ne'next unless/^14\t/;s/^\d+\t//;s/\t/ /g;print $_' >nextchunk
sort nextchunk | uniq -c
pig -x local -param model_in=model.14 -param model_out=model.15 -param next_chunk=nextchunk trending.pig
sort calc_min_trending.model.14
trending.model.14
sort model.15
