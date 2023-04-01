--SCRIPT - PATTERN PRINTING


Write a shell script using for loop to print the following pattern.

1
22
333
4444
55555




for (( i=1; i<=5; i++ ))
do
	for(( j=1; j<=i; j++ ))
	do
		echo -n $i
	done
	echo ""
done