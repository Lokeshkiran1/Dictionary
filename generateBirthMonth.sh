#!/bin/bash -x
function getMonth(){
case $1 in
1)
echo "January"
;;
2)
echo "February"
;;
3)
echo "March"
;;
4)
echo "April"
;;
5)
echo "May"
;;
6)
echo "June"
;;
7)
echo "July"
;;
8)
echo "August"
;;
9)
echo "September"
;;
10)
echo "October"
;;
11)
echo "November"
;;
12)
echo "December"
;;
esac
}

declare -A monthBday
for num in `seq 1 12`
do
month=(`getMonth $num`)
monthBday[$month]=" "
done
for i in `seq 1 50`
do
randomNo=$((1+$RANDOM%12))
month=(`getMonth $randomNo`)
monthBday[$month]="${monthBday[$month]} $i"
done
for j in `echo ${!monthBday[@]}`
do
echo "Person IDs having bdays in $j: ${monthBday[$j]}"
done
