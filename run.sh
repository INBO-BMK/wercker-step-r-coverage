#!/bin/bash

echo "library(covr);codecov()" > /test.R
R CMD BATCH --no-save --no-restore /test.R output.txt

success "Coverage successfull!"
