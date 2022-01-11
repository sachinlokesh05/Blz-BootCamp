#! /bin/bash -x

function myfunction() {
      echo "Hello World"
}

#name of ur function
#myfunction

add() {
  echo $(($1 + $2))
}

read -p "Enter first value: " x

read -p "Enter second value: " y

add $x $y
