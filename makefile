README.md:
	echo "# Title: guessing game" > README.md
	echo "## date: $(shell date)" >> README.md
	echo "number of lines: $(shell wc -l guessinggame.sh)" >> README.md
