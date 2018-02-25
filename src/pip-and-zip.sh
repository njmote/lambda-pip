#!/bin/bash

# Choose pip packages to install
pip install -t . ${pip}

#package contents in zip for lambda
zip -j -r linux-lambda.zip /working

####DO NOT REMOVE OR EDIT BELOW THIS LINE ####
####IF YOU DO, USE DOS2UNIX TO FIX ###########