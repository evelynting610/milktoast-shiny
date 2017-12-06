shinyServer(function(input, output) {
  output$test <- renderText({
    paste("In the separate server folder")
  })
})