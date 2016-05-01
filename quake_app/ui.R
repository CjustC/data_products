# Define UI

library(shiny)

shinyUI(
     
     # Fluid Bootstrap layout
     fluidPage(
          
          # Page Title
          titlePanel("Earthquakes near the Tonga Trench"),
          # Horizontal Line
          tags$hr(),
          # Image
          h5("Earthquake region: "),
          tags$em("Fiji, Vanua Levu, Tonga"),
          p(
          img(src="Fiji.png", height = 200, width = 400),
               h6(
               tags$em("Some earthquake positions near the Tonga Trench")
                )
               ),
          br(),
          
          # Sidebar Layout
          sidebarLayout(
               # Define sidebar
               sidebarPanel(
                    sliderInput("magnitude", label = h4("Magnitude"),
                                min=4.0, max = 9.0, value = 4.0, step = 0.1),

                    helpText(
                         h5("Move the slider to see the classifications of the earthquakes that have been recorded near the Tonga Trench."),
                         tags$em("magnitude > 8.0 = GREAT"), br(),
                         tags$em("magnitude > 6.9 = MAJOR"), br(),
                         tags$em("magnitude > 5.9 = STRONG"), br(),
                         tags$em("magnitude > 4.9 = MODERATE"), br(),
                         tags$em("magnitude > 3.9 = LIGHT"), br(),
                         tags$em("magnitude > 2.9 = MINOR")  
                          )

                    ),

               fluidRow(

                    # Define ouput label
                    column(3,
                         tags$h4("Classification:"),
                           # Define output
                         wellPanel(
                           h4(
                           textOutput("classText")))
                           ),
                    column(4,
                           p("The Tonga Trench is the deepest point in the South Pacific Ocean also known as the Horizon Deep. The Tonga Trench is a convergent plate boundary. The convergence rate is estimated to be approximately 24cm per year in some places being the fastest plate velocity recorded on the planet. The Tonga Trench is part of the "),
                                h4(
                                     tags$em("Ring of Fire.")
                                )
                           )
                       ) # fluidRow end
                     ), # Sidebar Layout end
               
               mainPanel()
     ) # FluidPage end
) # Shiny UI end