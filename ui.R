#######
### Data Products - Week 4 Assignment - UI.R
### Code for Simple Plotting Function
### Code based on sample provided at http://shiny.rstudio.com
### Date: May 13/2017
### Produced By: Amyn Kanjee
######


shinyUI(fluidPage
        (
    
            titlePanel("MT Car Shiny App"),
    
            sidebarLayout(
                sidebarPanel(
                    
                    sliderInput(inputId = "n_breaks",
                                label = "1. Select the number of of bins for the histogram:",
                                min = 1, max = 20, value = 10, step = 1),
                    
                    checkboxInput(inputId = "individual_obs",
                                  label = ("2. Choose whether or not you want to show the individual observations on the chart"),
                                  value = FALSE),
                    
                    checkboxInput(inputId = "density",
                                  label = ("3. Choose whether not to show the density estimate on the chart"),
                                  value = FALSE)
                    
                ),
        
                mainPanel(
            
    
                    plotOutput(outputId = "main_plot", height = "300px"),
    
                # Display this only if the density is shown
                conditionalPanel(condition = "input.density == true",
                     sliderInput(inputId = "bw_adjust",
                                 label = "4. Adjust the bandwidth as required",
                                 min = 0.2, max = 2, value = 1, step = 0.2)
                     )
    
            )
        )
    )
)