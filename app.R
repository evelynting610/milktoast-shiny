ui <- fluidPage(
  
  titlePanel("Test Title"),
  mainPanel(
    textOutput("test")
  )
)

server <- function(input, output) {
  
  print("I reconnected!")
  output$test <- renderText({
    print("rendered hello world")
    paste("Hello world ")
  })
  reactiveTimer(intervalMs = 1000)
  
}

# Run the application
shinyApp(ui = ui, server = server)