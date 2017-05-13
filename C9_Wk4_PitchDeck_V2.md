MTCars Shiny Application and Reproducible Pitch
========================================================
author: Amyn Kanjee
date: May 13, 2017
autosize: true

Introduction
========================================================
- Simple shiny app that plots the distribution of the fuel efficiency of the cars included in the MT Cars data set
- The app allows the use to personalize the chart by selecting the number of bins for the histogram, selecting whether or not to display the mpg distribution and the density line
- The code is based on the sample code provided at http://shiny.rstudio.com

The Dataset
========================================================
- The Motor Trend Cars (MTCARS) data set is part of the base library in R
- The ddata was extracted from the 1974 Motor Trend , and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models)
- A sample of the the information in the data set can be found below

```
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```
- More information about the data set can be found at https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html

Sample Plots
========================================================
- The app plots the probably density function for the fuel efficiency of the cars included in the data set
- The plot would look similair to the following

![plot of chunk unnamed-chunk-2](C9_Wk4_PitchDeck_V2-figure/unnamed-chunk-2-1.png)


Demo
========================================================
A demonstration version of the app can be found at the R-Studio Shiny Server - please give it a try and let me know what you think

https://akanjee.shinyapps.io/C9_Wk4_v3/

Future Enhancements
========================================================
Potential Future Enhancements include:
- Adding the ability to show the denisty based on the number of Gears, Cylinders and/or Transmission
- Providing Box Plots for the data set
- Getting a more updated data set 

Thank-You
========================================================
Thank-you for taking the tiime to review my proposal
