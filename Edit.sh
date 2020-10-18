#!/bin/bash -x
		echo "Listing records for \"$eInput\":"
		grep -n "$eInput" address-book.txt
		RETURNSTATUS=`echo $?`
		if [ $RETURNSTATUS -eq 1 ]
			then
			echo "No records found for \"$eInput\""
		else
			echo
			echo "Enter the line number (the first number of the entry) that you'd like to edit."
			read lineNumber
			echo
			for line in `grep -n "$eInput" address-book.txt`
			do
				number=`echo "$line" | cut -c1`
				if [ $number -eq $lineNumber ]
					then
					echo "What would you like to change ? Use the format:"
					echo "\"first name,last Name,city,state,pin,mob number\""
					read edit
					lineChange="${lineNumber}s"
					sed -i -e "$lineChange/.*/$edit/" address-book.txt
					echo "The change has been made"
				fi
			done
		fi
