# unit-testing-R
Unit testing in R

There are two main packages in R that implements unit testing: testthat and RUnit. Since testthat is written by Hadley Wickham, I am going to start with testthat first.

Resources:
* **https://journal.r-project.org/archive/2011-1/RJournal_2011-1_Wickham.pdf**
* http://www.is.uni-freiburg.de/ressourcen/algorithm-design-and-software-engineering-oeffentlicher-zugriff/11_softwaretesting.pdf
* http://www.brodrigues.co/fput/intro.html


Pointers:
* testthat + shiny - what's the best way to do unit testing?
* What should be the standardized way to do unit testing?
* How to ensure code is sufficiently tested? - coverage: https://cran.r-project.org/web/packages/covr/covr.pdf

Excerpt from Functional programming and unit testing for data munging with R: A short overview of unit testing

At the end of the last section I wrote that you can trust your functions. Is that true though? Functional programming can make your life easier, but it does not prevent you from introducing bugs in your code. However, what functional programming makes easily possible, is to very easily and effectively test your code thanks to unit testing. You probably already test your code, by hand. You write some loop that is supposed to sum the first 10 integers and then you try it out and check if, indeed, your loop returns 55. Because this is the correct result, you save your work and continue programming something else, and so on. **Unit testing is this, but in an automated way. Instead of just trying things out in the interpreter, you write unit tests. You write code that actually checks your functions. You save this unit tests somewhere, and then re-run them whenever you make changes to your code. Even if you don’t change some parts of your code, you re-run every unit test. Because you actually never know what may happen**. Maybe changing a single line in one of your functions introduced some unforeseen consequences that breaks functionality some place else. When you change code, and all your unit tests still pass, then you can be confident that your code is correct (actually, don’t be too confident, because maybe you didn’t write enough unit tests to cover every case. But we will see how we can be sure there is enough coverage).
