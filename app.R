ui <- fluidPage(
  
  titlePanel("Test Title"),
  mainPanel(
    textOutput("test")
  )
)

server <- function(input, output, session) {
  
  print("I reconnected!")
  output$test <- renderText({
    paste("Hello world ")
  })
  session$allowReconnect("force")
  
}

# Run the application
shinyApp(ui = ui, server = server)