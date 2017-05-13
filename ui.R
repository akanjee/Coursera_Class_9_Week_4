#######
### Data Products - Week 4 Assignment - UI.R
### Code for Simple Plotting Function
### Code based on sample provided at http://shiny.rstudio.com
###
######

shinyUI(bootstrapPage(
    
                
    sliderInput(inputId = "n_breaks",
                label = "Number of bins in histogram (approximate):",
                min = 1, max = 20, value = 10, step = 1),
    
    checkboxInput(inputId = "individual_obs",
                  label = strong("Show individual observations"),
                  value = FALSE),
    
    checkboxInput(inputId = "density",
                  label = strong("Show density estimate"),
                  value = FALSE),
    
    plotOutput(outputId = "main_plot", height = "300px"),
    
    # Display this only if the density is shown
    conditionalPanel(condition = "input.density == true",
                     sliderInput(inputId = "bw_adjust",
                                 label = "Bandwidth adjustment:",
                                 min = 0.2, max = 2, value = 1, step = 0.2)
    )
    
))