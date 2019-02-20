shinyUI(
  fluidPage(
    tags$head(HTML("
                <script type='text/javascript' src='keep-alive.js'></script>")),
    titlePanel("Separate UI title"),
    mainPanel(
      textOutput("test")
    )
  )
)