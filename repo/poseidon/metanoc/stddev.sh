# source this file before use
alias stddev="awk '{sum+=\$1; sumsq+=\$1*\$1} END {print sqrt(sumsq/NR - (sum/NR)**2)}'"
