sort -m xa[abcd].1grams | uniq -c | sort -nr > terms.1grams.freq &
sort -m xa[abcd].2grams | uniq -c | sort -nr > terms.2grams.freq &
sort -m xa[abcd].3grams | uniq -c | sort -nr > terms.3grams.freq &
