file="DB.txt"

if [ ! -f $file ]
then
	touch $file
fi

name=$1
number=$2

echo "$name $number" >> $file
exit 0