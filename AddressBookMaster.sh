#!/bin/bash -x
exit=0
while [ $exit -ne 1 ]
do
echo "Choice"
echo "1 for Add "
echo "2 for Search /Find /Display"
echo "3 for Edit"
echo "4 for Delete"
echo "5 for Exit "
echo "Enter Your Choice"
read ch
case $ch in
	1)
	   bash ./add.sh
	   ;;
	2)
	  bash ./search.sh
	   ;;
	3)
	  bash ./Edit.sh
	   ;;
	4)
	  bash ./delete.sh
	   ;;
	5)
	  exit=1
	  ;;
	*)
	 echo "Enter Valid Choice"
	  ;;
esac
done
