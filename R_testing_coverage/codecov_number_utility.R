# Helpful thread from Stack Overflow
# https://stackoverflow.com/questions/48637143/r-testthat-and-covr-use-in-a-non-package-library
# Run this file from the Command Line as : 'Rscript codecov_number_utility.R'

# Imports
library(testthat)
library(covr)

# Constants
number_utility <- "number_utility"
extension_r <- ".R"
extension_htm <- ".htm"

code_file_name <- paste(number_utility, extension_r, sep="")
test_file_name <- paste("test_", code_file_name, sep="")
coverage_report_file_name = paste("coverage_report_", number_utility, extension_htm, sep="")

# Run tests and generate Code Coverage Report
test_file(test_file_name)
res <- file_coverage(code_file_name, test_file_name)
print(res)
report(res, coverage_report_file_name)