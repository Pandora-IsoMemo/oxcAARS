library(shiny)
library(oxcAAR)
quickSetupOxcal()

tagList(
  navbarPage(
    title = paste("oxcAARS", packageVersion("oxcAARS")),
    theme = shinythemes::shinytheme("flatly"),
    position = "fixed-top",
    collapsible = TRUE,
    id = "tab",
    tabPanel(
      title = "Tab",
      sidebarLayout(
        sidebarPanel(
          width = 2,
          actionButton("example", "Create Example")
        ),
        mainPanel(
          plotOutput("example_plot_1"),
          plotOutput("example_plot_2")
        ),
      )
    )
  ),
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "custom.css")
  )
)
