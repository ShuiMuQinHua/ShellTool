#!/bin/sh 
 
i=10; 
 
while [[ $i -gt 5 ]];do 
 
echo $i; 
 
((i--)); 
 
done;  


while read line;do 
 
echo $line; 
 
done < /etc/hosts;  