cat xaa | emit_ngrams.rb 1 | sort > xaa.1grams &
cat xab | emit_ngrams.rb 1 | sort > xab.1grams &
cat xac | emit_ngrams.rb 1 | sort > xac.1grams &
cat xad | emit_ngrams.rb 1 | sort > xad.1grams &

cat xaa | emit_ngrams.rb 2 | sort > xaa.2grams &
cat xab | emit_ngrams.rb 2 | sort > xab.2grams &
cat xac | emit_ngrams.rb 2 | sort > xac.2grams &
cat xad | emit_ngrams.rb 2 | sort > xad.2grams &

cat xaa | emit_ngrams.rb 3 | sort > xaa.3grams &
cat xab | emit_ngrams.rb 3 | sort > xab.3grams &
cat xac | emit_ngrams.rb 3 | sort > xac.3grams &
cat xad | emit_ngrams.rb 3 | sort > xad.3grams &
