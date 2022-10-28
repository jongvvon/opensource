if [ -n "$1" ]
then
    for i in $(seq $1)
    do
	    echo "hello world"
    done
else
    for i in $(seq 10)
    do
    	echo "hello world"
    done
fi
exit 0