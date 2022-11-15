#!/bin/bash

echo "Hello"

echo $Browser
echo $Status
echo $Status
echo $Client
echo $Server
echo $Test

echo "Actual location is"
pwd

echo "We have these files here:"
ls

echo "The version of python is"
python3 --version

if $Status
then
python3 Server 127.0.0.1 1234 &
python3 Client 127.0.0.1 1234
else 
echo "Variabila status este falsa deci nu se va porni serverul"
fi