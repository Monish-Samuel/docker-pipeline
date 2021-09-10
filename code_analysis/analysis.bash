#!/bin/bash
exe() { echo "\$ $@" ; "$@" ; }
echo "--------------------Radon Code Analysis Start----------------------------"
exe radon cc ../src/Alphabet.py
exe radon cc ../src/output.py
exe radon cc ../src/test_Alphabet.py
echo "--------------------Radon Code Analysis Stop----------------------------"
