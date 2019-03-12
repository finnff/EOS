#script dat automatisch een copy maakt van de current directory 
#en alle mappen/bestanded copiert naar een git map, en vervolgens
#add, commit and pushed naar een github respository.
#niet heel moeilijk/complex maar scheelt mij weer een paar handelingen.

cp -R $1 $2
cd $2
git add -A
echo add commit message: 
read cmess
git commit -m "$cmess"
git push origin master


