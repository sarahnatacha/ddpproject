Presentation of the Shiny App BMI Calculator
========================================================
author: Sarah Natacha
date: November 20th 2016
autosize: true
font-family: 'Arial'
transition: rotate

What is a BMI?
========================================================

The BMI,Body mass index is a measure of body fat based on your weight in relation to your height, and applies to most adult men and women aged 20 and over. 
For children aged 2 and over, BMI percentile is the best assessment of body fat.

Two values are taken as input:
* Weight
* Height 

The application calculates the BMI in real-time ans also converts the weight in pounds to the weight in kilos.
Then it gives an analysis based on: 
BMI under 18.5 - is considered very underweight and possibly malnourished, 18.5-24.9 - means that have a healthy weight range for young and middle-aged adults, 25.0 to 29.9 - you are overweight.


BMI Formula
========================================================

The formula is dividing the weight by the squared height and multipliying the result by 703:


```r
bmicalculator <- (weight/(height^2))*703
```

Example:


```r
weight = 128

height = 66

bmiresult <- (weight/(height^2))*703

bmiresult
```

```
[1] 20.65748
```
Analysis of the BMI
========================================================

The result is analyzed as below


```r
 ifelse(BMI_value<18.5,"Underweight",
        ifelse(BMI_value<25,"Healthy",
               ifelse(BMI_value>30,"Overweight")))
```

Use the Shiny App BMI Calculator
========================================================
You can use the BMI calculator at 

https://sarahnatacha.shinyapps.io/ddpproject/

Thank you!
