Md5file="$1"

echo Enter a Username: 
read user

if [ -z "$user" ];then
        user=$(whoami)
fi

echo Your Username is: $user



echo Enter a Password: 
read -s "pass1"
passsize=${#pass1}


while [[ ! "$pass1" =~ [A-Z] ]];do
    echo Your password needs to contain an uppercase charecter.
    echo Enter a Password: 
    read -s "pass1"
done

while [[ ! "$pass1" =~ [0-9] ]];do
    echo Your password needs to contain an Number.
    echo Enter a Password: 
    read -s "pass1"
done

while [ $passsize -le 8 ]; do
    echo Your password needs to be longer than 8 charecters.
    echo Enter a Password: 
    read -s "pass1"
    passsize=${#pass1}
done
# Ik weet dat deze while loops  niet paralel werken en zijn daardoor makkelijk te omzeilen.

echo Repeat your password: 
read -s "pass2"

while [ "$pass1" != "$pass2" ]; do
    echo "Your passwords do not match"
    echo Enter a Password: 
    read -s "pass1"
    echo Repeat your password: 
    read -s "pass2"
done

echo  $pass2 | md5sum >> $Md5file
