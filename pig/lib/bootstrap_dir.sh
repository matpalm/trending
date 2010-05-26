set -ex 
if [ -d trending ]; then
    mv trending trending.`date +%Y%m%d%H%M%S`
fi 
mkdir -p trending
cd trending
mkdir {model,fft,trending}
touch model/000 
ln -s ../chunks.full chunks
cp ../ngram.rb .
cd ..
gen_run_pig_version.rb > run_pig_version.sh
echo "now run: run_pig_version.sh"
