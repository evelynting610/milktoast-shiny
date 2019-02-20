shinyServer(function(input, output, session) {
  print("server has started")
  output$test <- renderText({
    paste("In the separate server folder")
  })
  observe(input$alive_count)
  session$allowReconnect("force")
})