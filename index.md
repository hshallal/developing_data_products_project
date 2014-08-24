---
title       : Calculating simple or compounded interest rate
subtitle    : A web shiny application
author      : Hassan Shallal
job         : An evolving data scientist
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides

---

## Uses of the application:

* This web application is useful for calculating simple or compounded interest rate of a given investment over a specific period of time.

* The web application also allows for comparing the effect of compounding.

* You can check it out at: http://hshallal.shinyapps.io/project/

---

## Calculation of simple interest rate:

* Simple interest rate is calculated based on the following formula:

**Cumulative amount after the investment = Principal + (Principal*(Rate/100)*Time)**

 - **Principal** is the starting amount in USD
 - **Rate** is the annual interest rate. For example, the user should enter 3.75 for 3.75% annual interest rate. 
 - **Time** is the time of investment in years.

---

## Calculation of compounded interest rate:

* Simple interest rate is calculated based on the following formula:

**Cumulative amount after the investment = Principal*((1+(Rate/100))^Time)** 

 - **Principal** is the starting amount in USD
 - **Rate** is the annual interest rate. For example, the user should enter 3.75 for 3.75% annual interest rate. 
 - **Time** is the time of investment in years.

---

## Instructions:

* The user is prompted to enter the following: the principal, the annual rate, and the time in years
* By clicking the submit button, the application shows the entered values and the calculated cumulative amount.
* For interest rates that are not annual, adjustments should be performed by the user. For example, the user should enter 10 for a 5% semiannual interest rate or 2.5% quarterly ineterest rate.



