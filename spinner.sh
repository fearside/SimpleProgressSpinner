#!/bin/bash
# Author : Teddy Skarin

# Create spinner function
function Spinner {

# Initiate spinner indicator
if [ -z $indicator ]; then
	indicator="\\"
fi

case $indicator in
	"|") indicator="/";;
	"/") indicator="-";;
	"-") indicator="\\";;
	"\\") indicator="|";;
esac

# Print simple progress spinner
printf "\b${indicator}"

}

# Variables
_start=1
_end=100

# Proof of Concept
printf "Revolving a ${_end} cycles.\n"
for char in $(seq ${_start} ${_end});
do 
	Spinner
	sleep 0.1
done

# Remove trailing spinner character and print Finished!
printf "\rFinished!\n"
