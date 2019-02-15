ui <- fluidPage(
  tags$head(HTML("
                <script type='text/javascript' src='keep-alive.js'></script>")),
  titlePanel("Test Title"),
  mainPanel(
    textOutput("test")
  )
)

server <- function(input, output) {
  
  output$test <- renderText({
    "Hello world"
  })
  output$keep_alive <- renderText({
    input$alive_count
  })
  
}

# Run the application
shinyApp(ui = ui, server = server)