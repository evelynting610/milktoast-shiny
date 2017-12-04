ui <- fluidPage(
  
  titlePanel("New folder title"),
  mainPanel(
    textOutput("test")
  )
)

server <- function(input, output) {
  
  output$test <- renderText({
    paste("In new folder")
  })
  
}

# Run the application
shinyApp(ui = ui, server = server)