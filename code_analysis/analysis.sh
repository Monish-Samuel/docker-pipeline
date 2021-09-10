#!/bin/bash
echo "--------------------Radon Code Analysis Start----------------------------"
declare -a strings=("Alphabet.py" "output.py" "test_Alphabet.py")
for i in "${strings[@]}";do
	radon cc src/$i
done
echo "--------------------Radon Code Analysis Stop----------------------------"
