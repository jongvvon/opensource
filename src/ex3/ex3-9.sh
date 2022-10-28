file="DB.txt"

search=$1

cat $file | grep "$1"
exit 0