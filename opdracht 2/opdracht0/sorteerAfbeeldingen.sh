#rm -rf Afbeeldingen



mkdir Afbeeldingen

find -name "*jpg"|while read file; do
    mv $file Afbeeldingen/
done

# find -name "*.png"|while read file; do
#     mv $file Afbeeldingen/
# done



# find -type f -iname \*jpg -print0 | 
#     xargs -0 -I{} mv {} Afbeeldingen

find -type f -iname \*png -print0 | 
xargs -0 -I{} mv {} Afbeeldingen