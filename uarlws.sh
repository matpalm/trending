# uarlws = Remove Leading White Space; isn't it obvious ;)
uniq -c | perl -plne's/^\s+//;'
#while(<>) {
#    s/^\s+//;
#    print $_;
#}
