#!/bin/bash -x
echo "Welcome to FlipCoin simulation program"
coin=$(( RANDOM%2 ))
echo $coin
if (( $coin==0 ))
then
   echo "Head"
else
   echo "Tail"
fi
