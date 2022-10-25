library(shiny)

mpgData <- mtcars

shinyServer(function(input, output) {
  
  formulaText <- reactive({
    paste("mpg vs ", input$variable)
  })
  
  output$caption <- renderText({
    formulaText()
  })
  output$mpgPlot <- renderPlot({
    
    mpgData <- data.frame(mpg = mtcars$mpg, var = factor(mtcars[[input$variable]]))
    ggplot(mpgData, aes(var, mpg,fill=var)) + 
      geom_boxplot(alpha=0.3) + 
      xlab(input$variable)
  })
  
})