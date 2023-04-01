--SHELL SCRIPTING


Write Shell script to split the below file into two files male_nominee.txt and female_nominee.txt based on gender. If file male_nominee.txt or female_nominee.txt already exists, then append the content.

Display the contents of female_nominee.txt and male_nominee.txt

names.txt

23|Arjun|Male

24|Akshara|Female

17|Aman|Male

19|Simran|Female





#check if files exist, if not the create a file
touch male_nominee.txt female_nominee.txt

#from names.txt we can extract
while read line
do
	gender=$(echo $line | awk -F '\' '{print $3}')
	
	#adding line to appropriate files based on gender
	if [ $gender == 'Male' ]
	then
		echo $line >> male_nominee.txt
	else
		echo $line >. female_nominee.txt
	fi
done < names.txt

#Display contents
echo "Contents of male_nominee.txt: "
cat male_nominee.txt

echo "Contents of female_nominee.txt: "
cat female_nominee.txt