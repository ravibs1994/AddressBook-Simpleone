#!/bin/bash -x
 #Name of Address Book
Book="address-book.txt"
fName=""
lName=""
pZip=0
pMob=0
while [ true ]
do
echo "First Name of person: "
read name
pat='^[A-Z]{1}[a-z]{2,}$'
if [[ $name =~ $pat ]]
    then
	echo "Valid"
	fName=$name
	break
    else
	echo "First Character should be upper case"
	continue
fi
done

while [ true ]
do
echo "Last Name of person: "
read lastName
pat2='^[A-Z]{1}[a-z]{2,}$'
if [[ $lastName =~ $pat2 ]]
    then
        echo "Valid"
        lName=$lastName
        break
    else
        echo "First Character should be upper case"
        continue
fi
done

echo "City: "
read city
echo "State: "
read state

while [ true ]
do
echo "Zip Code : "
read zip
pat3='^[1-9]{1}[0-9]{2}\s{0,1}[0-9]{3}$'
if [[ $zip =~ $pat3 ]]
    then
        echo "Valid"
        pZip=$zip
        break
    else
        echo "Use Only Numbers"
        continue
fi
done

while [ true ]
do
echo "Mob Number : "
read mobNo
pat4='^((\+){1}91){1}[ -]?[0-9]{10}$'
if [[ $ =~ $pat3 ]]
    then
        echo "Valid"
        pMob=$mobNo
        break
    else
        echo "Use Only Numbers up 10 characters"
        continue
fi
done
echo "$fName ; $lName ; $city ; $state ; $pZip ; $pMob " >>$Book
