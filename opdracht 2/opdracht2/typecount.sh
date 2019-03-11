case "$#" in
    1)
    for extention in $1 ;do
        files=(*."$extention")
        printf 'number of %s in folder: %d \n' "$extention" "${#files[@]}"
    done
    ;;
    2)
    for extention in $1 $2 ;do
        files=(*."$extention")
        printf 'number of %s in folder: %d \n' "$extention" "${#files[@]}"
    done
    ;;
    3)
    for extention in $1 $2 $3 ;do
        files=(*."$extention")
        printf 'number of %s in folder: %d \n' "$extention" "${#files[@]}"
    done
    ;;
    4)
    for extention in $1 $2 $3 $4;do
        files=(*."$extention")
        printf 'number of %s in folder: %d \n' "$extention" "${#files[@]}"
    done
    ;;
    5) 
    for extention in $1 $2 $3 $4 $5 ;do
        files=(*."$extention")
        printf 'number of %s in folder: %d \n' "$extention" "${#files[@]}"
    done
esac


#./typecount.sh pdf doc jpg 
