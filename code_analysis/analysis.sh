#!/bin/bash
echo "--------------------Radon Code Analysis Start----------------------------"
radon cc ../src/Alphabet.py
radon cc ../src/output.py
radon cc ../src/test_Alphabet.py
echo "--------------------Radon Code Analysis Stop----------------------------"
