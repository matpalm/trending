set -ex 
if [ -d data ]; then
    mv data data.`date +%Y%m%d%H%M%S`
fi 
mkdir -p data
cd data
mkdir {model,fft,trending,debug}
touch model/000 
ln -s ../chunks chunks
cp ../ngram.rb .
cd ..
gen_run_iterations.rb > run_iterations.sh
echo "now run: run_iterations.sh"
