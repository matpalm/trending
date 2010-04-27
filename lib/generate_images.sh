set -ex
generate_images.rb > generate_images.r
R --vanilla < generate_images.r

