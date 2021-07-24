#!/bin/bash -x
echo "Welcome to FlipCoin simulation program"
countofhead=0
countoftail=0

for (( i=0; i<20; i++ ))
do
while [[ $countofhead -le 21 && $countoftail -le 21 ]]
do
   coin=$(( RANDOM%2 ))
   if [ $coin -eq 0 ]
   then
      echo "Coin flips head"
      countofhead=$(( $countofhead+1 ))
   else
      echo "coin flips tail"
      countoftail=$(( $countoftail+1 ))
   fi
done
done
echo "Number of times head won" $countofhead
echo "Number of times tail won" $countoftail
if [ $countofhead -gt $countoftail ]
then
   echo "Head won by "$(($countofhead-1))
elif [ $countofhead -le $countoftail ]
then
   echo "Tail won by "$(($countoftail-1))
else
   echo "It is tie between head and tail"
fi
