set -ex
grep -P "^$1\t" debug/chunk*
grep -P "^$1\t" model/*
grep -P "^$1\t" trending/*