#!/bin/bash
FILE=$1

if [ -z "$FILE" ]
then
      echo "Must pass path to initialized-flag-file as first parameter - ending script"
      exit 1
fi

#Initialize Node project code here

npm install --save-dev parcel #Change and add to your heart content

#End of initialize Node code

touch $FILE