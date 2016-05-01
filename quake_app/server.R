#server.R

library(shiny)
library(ggplot2)

# Load Data, get mean

data <- data(quakes)
mag <- quakes$mag
magMean <- mean(quakes$mag)

shinyServer(function(input, output) {


     # Show the Magnitude selected
     output$classText <- renderText({
          classification <- as.character()
          
          ifelse(input$magnitude > 8, classification <- "Great", 
                 ifelse(input$magnitude > 6.9, classification <- "Major", 
                        ifelse(input$magnitude > 5.9, classification <- "Strong", 
                               ifelse(input$magnitude > 4.9, classification <- "Moderate", 
                                      ifelse(input$magnitude > 3.9, classification <- "Light", 
                                             ifelse(input$magnitude > 2.9, classification <- "Minor"))))))
          paste(classification)     
               
          })

})


