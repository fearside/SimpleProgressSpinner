#!/bin/bash
# Author : Teddy Skarin

# Create spinner function
function Spinner {

# Initiate spinner indicator
if [ -z $_indicator ]; then
	_indicator="\\"
fi

case ${_indicator} in
	"|") _indicator="/";;
	"/") _indicator="-";;
	"-") _indicator="\\";;
	"\\") _indicator="|";;
esac

# Print simple progress spinner
printf "\b${_indicator}"

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
