# calculate the number of files in the current directory
num_lines=`ls | wc -l`

function question {
	echo "How many files are in the current directory?"
	read guess
}

question

while [[ guess -ne $num_lines ]]
do
	if [[ guess -gt $num_lines ]]
	then
		echo "Too high"
		question
	else
		echo "Too low"
		question
	fi
done

echo "Congrats! You guessed the number of files correct!"
