ui <- fluidPage(
  
  titlePanel("Test Title"),
  mainPanel(
    textOutput("test")
  )
)

server <- function(input, output) {
  
  output$test <- renderText({
    paste("Hello world ")
  })
  
}

# Run the application
shinyApp(ui = ui, server = server)