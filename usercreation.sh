#!/bin/bash
# creating news users using users.csv file
#users.csv file should be in same directory

input="users.csv"
while IFS=',' read -r userid name password
do
echo "adding $userid"
useradd -c "$name" -m $userid
echo $password | passwd --stdin $userid
done < "$input"

