#!/bin/bash

run_script () {
  temp_file=$(mktemp -t "XXXXXXXXXX.R")
  cat > "$temp_file"
  Rscript "$temp_file"
  if [[ $? -ne 0 ]]; then
    fail "Script $temp_file failed!"
  fi
}

run_script <<END
covr::codecov(quiet = FALSE, $WERCKER_R_COVR_OPTIONS)
END

success "Coverage successfull!"
