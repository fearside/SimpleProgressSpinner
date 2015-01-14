#!/bin/bash
# Author : Teddy Skarin

# Create spinner function
function Spinner() {

# Initiate spinner indicator
if [ -z $indicator ]; then
indicator="\\"
fi

case $indicator in
	"|")
	  indicator="/"
	  ;;
	"/")
	  indicator="-"
	  ;;
	"-")
	  indicator="\\"
	  ;;
	"\\")
	  indicator="|"
	  ;;
esac

# Print simple progress spinner
printf "\b${indicator}"

}

# Proof of Concept
for char in $(seq 1 100);
do 
	Spinner
	sleep 0.1
done

# Remove trailing spinner character and print Finished!
printf "\bFinished!\n"
