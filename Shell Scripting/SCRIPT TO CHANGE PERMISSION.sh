--SCRIPT TO CHANGE PERMISSION


Write a shell script to change the read and write permission of the file to read,write and execute permission for all.

If file exists display as,

"File Exists!"

else display as,

"File does not Exist"

If file has read and write permission display as,

"File Permission has been changed"

Assume file name is given as command line argument.



Sample Output1:

File Exists!
File Permission has been changed

Sample Output2:

File does not Exist





if [ -e "$1"]
then
	echo "File Exists!"

	if [ -r "$1" ] && [ -w "$1" ]
	then
		chmod a+rwx "$1"
		echo "File Permission has been changed"
	else
		echo "File does not Exist"
	fi
else
	echo "File does not Exist"
fi