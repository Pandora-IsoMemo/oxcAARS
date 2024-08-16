shinyServer(function(input, output, session) {
  my_date <- oxcalCalibrate(5000,25,"KIA-12345")
  observe({
    output$example_plot_1 <- renderPlot({
      plot(my_date)
    })
    output$example_plot_2 <- renderPlot({
      calcurve_plot(my_date)
    })
  }) %>% bindEvent(input$example)
})
