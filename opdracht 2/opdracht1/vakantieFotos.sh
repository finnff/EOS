rm -rf Afbeeldingen/Vakantie
mkdir Afbeeldingen/Vakantie

find -name "*vakantie*.jpg"|while read file; do
    mv $file Afbeeldingen/Vakantie/
done

find -name "*vakantie*.png"|while read file; do
    mv $file Afbeeldingen/Vakantie/
done
