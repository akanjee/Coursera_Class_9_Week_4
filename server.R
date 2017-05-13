#######
### Data Products - Week 4 Assignment - Server.R
### Code for Simple Plotting Function
### Code based on sample provided at http://shiny.rstudio.com
### Date: May 13/2017
######


shinyServer(function(input, output) {

    output$main_plot <- renderPlot ({
            
             hist(mtcars$mpg,
             probability = TRUE,
             breaks = as.numeric(input$n_breaks),
             xlab = "Fuel Efficiency (MPG)",
             main = "MPG Distribution",
             xlim = c(0,40),
             ylim = c(0,0.15)
             )

        if (input$individual_obs) {
            rug(mtcars$mpg)
        }
        
        if (input$density) {
            dens <- density(mtcars$mpg,
            adjust = input$bw_adjust)
            lines(dens, col = "red")
        }
        
    })
})