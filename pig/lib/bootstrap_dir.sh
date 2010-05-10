set -x 
mkdir $1
cd $1
mkdir {model,fft,trending}
touch model/000 # required for pig local-empty-file bug
printf "dummy\t0.0\t0.0\t0.0" > trending/dummy # again, pig empty-file bug :(
ln -s ../chunks.full chunks
cp ../ngram.rb .
cd ..
gen_run_pig_version.rb $1 > run_pig_version.sh
echo "now run: run_pig_version.sh"
