ui <- fluidPage(
  tags$head(HTML("
                <script type='text/javascript' src='keep-alive.js'></script>")),
  titlePanel("Test Title"),
  mainPanel(
    textOutput("test")
  )
)

server <- function(input, output) {
  
  print("server has started")
  
  output$test <- renderText({
    "Hello world"
  })

  observe(input$alive_count)
  
}

# Run the application
shinyApp(ui = ui, server = server)