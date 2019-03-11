# https://imagemagick.org/script/convert.php



for image in *jpg;do
    convert "$image" -resize 128x128 "${image%.}.png"
    done