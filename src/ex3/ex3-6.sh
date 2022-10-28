if [ ! -d $1 ]
then
	mkdir $1
	cd $1

	for i in `seq 0 4`
	do
		touch "file$i.txt"
	done
	
	tar -cf $1.tar *.txt
	ls
	
	mkdir $1
	mv $1.tar $1
	cd $1

	tar -xf $1.tar
	ls -1 *.txt
fi
exit 0