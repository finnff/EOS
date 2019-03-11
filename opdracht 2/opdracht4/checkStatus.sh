rm "logfile.txt"

touch "logfile.txt"
LOGFILE="logfile.txt"


for i in *;
    do $1 "$i"
    if [ $? -eq 0 ] ; then
        echo SUCCESS, $1, $i &>> $LOGFILE
    else
        echo FAILED, $1, $i &>> $LOGFILE
    fi

done


