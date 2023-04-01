--SHELL SCRIPT 3


Write a shell script to print numbers as 5 4 3 2 1 using while loop.

Sample output:

5

4

3

2

1




number=5
while [ $number -gt 0 ]
do
	echo $number
	number=$((number - 1))
done