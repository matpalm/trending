#!/usr/bin/env python
import sys, codecs, locale
from nltk.tokenize import WordPunctTokenizer, PunktWordTokenizer, PunktSentenceTokenizer

sent_tokenizer = PunktSentenceTokenizer()
token_tokenizer = WordPunctTokenizer()

sys.stdin = codecs.getreader(locale.getpreferredencoding())(sys.stdin)
sys.stdout = codecs.getwriter(locale.getpreferredencoding())(sys.stdout)
sys.stderr = codecs.getwriter(locale.getpreferredencoding())(sys.stderr)

# for PunktWordTokenizer
def not_single_char(token): return len(token) > 1

def emit_ngrams(tokens, ngram_length):
    for ngram in [ tokens[n:n+ngram_length] for n in range(0,len(tokens)-ngram_length+1) ]:
        print " ".join(ngram)

for line in sys.stdin.readlines():
    for sentence in sent_tokenizer.tokenize(line):
        tokens = token_tokenizer.tokenize(sentence)
        for length in range(1,4): # ngrams up to, and including, length 3
            emit_ngrams(tokens, length)



