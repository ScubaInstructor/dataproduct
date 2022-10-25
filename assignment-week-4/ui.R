library(shiny)
shinyUI(fluidPage(
  
  # Application title
  titlePanel("mtcars Dataset - Predit mpg (miles per gallon"),
  
  sidebarPanel(
    
    selectInput("variable", "Variable:", 
                c("Cylinders" = "cyl",
                  "Transmission" = "am",
                  "Gears" = "gear",
                  "Weight" = "wt",
                  "Horsepower" = "hp"))
  ),
  
  mainPanel(
    plotOutput("mpgPlot")
  )
))