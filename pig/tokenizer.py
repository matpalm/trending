#!/usr/bin/env python
import sys, codecs, locale
from nltk.tokenize import WordPunctTokenizer, PunktWordTokenizer, PunktSentenceTokenizer

sent_tokenizer = PunktSentenceTokenizer()
token_tokenizer = WordPunctTokenizer()

sys.stdin = codecs.getreader(locale.getpreferredencoding())(sys.stdin)
sys.stdout = codecs.getwriter(locale.getpreferredencoding())(sys.stdout)
sys.stderr = codecs.getwriter(locale.getpreferredencoding())(sys.stderr)

def not_single_char(token): return len(token) > 1

for line in sys.stdin.readlines():
    for sentence in sent_tokenizer.tokenize(line):
        for token in token_tokenizer.tokenize(sentence):
            if not_single_char(token):
                print token



