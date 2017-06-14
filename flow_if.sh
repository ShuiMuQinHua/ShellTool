#!/bin/bash
scores=100; 
 
if [[ $scores -gt 90 ]]; then 
 
echo "very good!"; 
 
elif [[ $scores -gt 80 ]]; then 
 
echo "good!"; 
 
elif [[ $scores -gt 60 ]]; then 
 
echo "pass!"; 
 
else 
 
echo "no pass!"; 
 
fi;     