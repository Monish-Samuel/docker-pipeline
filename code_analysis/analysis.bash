#!/bin/bash
echo "--------------------Radon Code Analysis Start----------------------------"
mic= "$(radon cc ../src/Alphabet.py)"
echo $mic
radon cc ../src/output.py
radon cc ../src/test_Alphabet.py
echo "--------------------Radon Code Analysis Stop----------------------------"
