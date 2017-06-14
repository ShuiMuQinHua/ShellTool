#!/bin/sh 
 
  
 
case $1 in 
 
start | begin) 
 
    echo "start something"   
 
    ;; 
 
stop | end) 
 
    echo "stop something"   
 
    ;; 
 
*) 
 
    echo "Ignorant"   
 
    ;; 
 
esac  



 
  
 
select ch in "begin" "end" "exit" 
 
do 
 
case $ch in 
 
"begin") 
 
    echo "start something"   
 
    ;; 
 
"end") 
 
    echo "stop something"   
 
    ;; 
 
"exit") 
 
    echo "exit"   
 
    break; 
 
    ;; 
 
*) 
 
    echo "Ignorant"   
 
    ;; 
 
esac 
 
done;  