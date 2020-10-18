#!/bin/bash -x
Book="address-book.txt"

        # Ask the user which line to delete
        echo -n "Which line should I delete: "
        read lNumber

        # Rename the file before deleting
        cp $Book copy.txt

        # Add line numbers and delete against that number
        nl --number-separator=":" copy.txt | grep -v $lNumber: | awk -F: '{print $2}' |  tee $Book
