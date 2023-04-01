--SCRIPT TO CHECK PERMISSION


Write a shell script to test whether a given

 file is directory or not
 file has read permission or not
 file has write permission or not
 file has execute permission or not
          
Assume file name is given as command line argument.

Sample Output:

Write : yes

Read : yes

Execute : no

Directory : no






file=$1

#check for write permission
if [ -w $file ]
then
	echo "Write: yes"
else
	echo "Write: no"
fi

#check for read permission
if [ -r $file ]
then
	echo "Read: yes"
else
	echo "Read: no"
fi

#check for execute permission
if [ -x $file ]
then
	echo "Execute: yes"
else
	echo "Execute: no"
fi

#check if file is directory
if [ -d $file ]
then
	echo "Directory: yes"
else
	echo "Directory: no"
fi