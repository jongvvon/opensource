if [ ! -d $1 ]
then
	mkdir $1
	cd "$1"
	
	for i in `seq 0 4`
	do
		touch "file$i.txt"
		mkdir "file$i"
		
		cd "file$i"
		
		ln -s "../file$i.txt" "file$i.txt"
		cd "../"
	done
fi
exit 0