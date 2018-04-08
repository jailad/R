# R / R_testing_coverage
* A small project which shows how to write unit tests for your R code, and then how to generate code coverage reports using the tests.

# What are unit tests ?
* You can think of unit tests as testing code which ensures some level of guarantees for your main code.

# Why write unit tests ?
* As part of this project, we are not going to cover why we should write unit tests, but if you are interested then you can checkout this [link](http://r-pkgs.had.co.nz/tests.html).

# What is a code coverage report ?
* From [Wikipedia](https://en.wikipedia.org/wiki/Code_coverage) : <BR>
"
In computer science, test coverage is a measure used to describe the degree to which the source code of a program is executed when a particular test suite runs. A program with high test coverage, measured as a percentage, has had more of its source code executed during testing, which suggests it has a lower chance of containing undetected software bugs compared to a program with low test coverage.
"

# Setup
* Install R e.g. from [here](https://cran.r-project.org/bin/)
* Once R is installed, then from the command prompt launch R, and then install the following packages:
    * TestThat
        * Why ?
            * Package used to develop the tests.
        * How ?
            * install.packages('testthat', repos='https://cran.us.r-project.org')
    * Covr
        * Why ?
            * Package used to determine code coverage.
        * How ?
            * install.packages('covr', repos='https://cran.us.r-project.org')
    * Shiny
        * Why ?
            * Used to develop coverage reports.
        * How ?
        * install.packages('shiny', repos='https://cran.us.r-project.org')
    * DT
        * Why ?
            * A dependency for Shiny.
        * How ?
            * install.packages('DT', repos='https://cran.us.r-project.org')
* Clone this [repo](https://github.com/jailad/R).

# Key Files

## number_utility.R
* This is our 'main' / 'functional' file which represents the functionality for a project.
* This is the code that we wish to generate confidence / guarantees around.

## test_number_utility.R
* This is our testing file which we have written to test functions developed within 'number_utility.R'.
* We can run this file from the command line by typing:
    * Rscript test_number_utility.R

## codecov_number_utility.R
* This is the file which we will be used to run our tests as developed above, and to then generate code coverage reports. 
* The current coverage level is 71.43%, getting it up to 100% would be a useful follow-on exercise.
* We can run this file from the command line by typing:
    * Rscript codecov_number_utility.R

## coverage_report_number_utility.htm
* This is the generate code coverage report.

# Output

* Once, we execute 'Rscript codecov_number_utility.R', the following output(s) are generated.

* Coverage Result<BR>
    * The output below is generated from the Terminal window. They key take away from the image below is that our tests ran, and that our code coverage currently is 71.43%.

[coverage_result]: images/coverage_result.png "Coverage Result"
![alt text][coverage_result]

* Coverage Report - Summary page<BR>
    * This is an HTML report which we have generated and the summary page provides information which is similar to what was provided above.

[coverage_report_1]: images/coverage_report_1.png "Coverage Report - Summary Page"
![alt text][coverage_report_1]

* Coverage Report - Details Page - number_utility.R<BR>
    * The line(s) in green indicate coverage, and the number of time(s) they were executed as part of running the unit test(s).
    * The line(s) in red indicate the line(s) which lack coverage.


[coverage_report_2]: images/coverage_report_2.png "Coverage Report - Details Page - number_utility.R"
![alt text][coverage_report_2]

# Follow-on Exercise
* Clone this repository.
* Update 'test_number_utility.R' to write suitable tests, such that when you re-run 'codecov_number_utility.R' you can see the code coverage jump from 71% to 100%. 


# References:

* TestThat Package
    * http://testthat.r-lib.org/
* Documentation for TestThat package
    * https://cran.r-project.org/web/packages/testthat/testthat.pdf
* Documentation for Covr package
    * https://cran.r-project.org/web/packages/covr/covr.pdf

