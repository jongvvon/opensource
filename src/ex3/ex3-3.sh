weight=$1
height=`echo $2 | awk '{printf "%.2f", $1/100}'`
BMI=`echo $weight $height | awk '{printf "%.2f", $1 / ($2 * $2)}'`

if [ `echo "$BMI < 18.5" | bc` -eq 1 ]
then
	echo "저체중입니다."
elif [ `echo "$BMI >= 23" | bc` -eq 1 ]
then
	echo "과체중입니다."
else
	echo "정상제충입니다."
fi
exit 0