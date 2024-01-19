README.md: guessingname.sh
	echo "# Guessing name bash script project" > README.md
	date >> README.md
	wc -l guessingname.sh | egrep -o "[0-9]+" >> README.m