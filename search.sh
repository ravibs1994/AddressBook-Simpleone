#!/bin/bash -x
Book="address-book.txt"
echo -n "What person or number are you seeking :"
read search
echo "Name ; mobNo"
grep -i $search $Book

