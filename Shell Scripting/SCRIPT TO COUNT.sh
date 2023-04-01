--SCRIPT TO COUNT


Write a shell script which displays the total number of words, characters, lines in a file. Assume the file name is given as command line argument.


Sample Output:

Number of characters in test.txt is 20

Number of words in test.txt is 3

Number of lines in test.txt is 3





file=$1

#count number of characters in file
char_count=$(wc -m < $file)

#count number of words in file
word_count=$(wc -w < $file)

#count number of lines in file
line_count=$(wc -l < $file)

echo "Number of characters in $file is $char_count"
echo "Number of words in $file is $word_count"
echo "Number of lines in $file is $line_count"