library(shiny)
library(DT)
library(dplyr)
library(googlesheets)

# myPaths <- .libPaths("C:/Program Files/R/R-3.6.2/library")
# myPaths <- c(myPaths)
# .libPaths(myPaths)  # add new path
# .libPaths()
## ======================
googleform_embed_link <- "https://docs.google.com/forms/d/e/1FAIpQLSfZZ6Vsw3TuVw_oBLN4EXdX6kJMuZGDVyb_taSadWuJ8J5pEw/viewform?embedded=true"
googleform_data_url <- "https://docs.google.com/spreadsheets/d/1By9J-N4fZ8J4cj4OEo8psDeXpxsyTQMqBsMtOhvgD_E/edit#gid=770624151"
## ======================

HTML('<iframe src="https://docs.google.com/forms/d/e/1FAIpQLSfZZ6Vsw3TuVw_oBLN4EXdX6kJMuZGDVyb_taSadWuJ8J5pEw/viewform?embedded=true" width="640" height="1209" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>')
  
  
shinyServer(function(input, output, session) {

# ss <- gs_url(googleform_data_url, lookup = FALSE, visibility = "public")

  output$googleForm <- renderUI({
    tags$iframe(id = "googleform",
                src = "https://docs.google.com/forms/d/e/1FAIpQLSfZZ6Vsw3TuVw_oBLN4EXdX6kJMuZGDVyb_taSadWuJ8J5pEw/viewform?embedded=true",
                width = 400,
                height = 625,
                frameborder = 0,
                marginheight = 0)
  })


  # output$googleFormData <- DT::renderDataTable({
  #   input$refresh
  #   ss_dat <- gs_read(ss) %>%
  #     mutate(Timestamp = Timestamp %>%
  #              as.POSIXct(format = "%m/%d/%Y %H:%M:%S", tz = "PST8PDT")) %>%
  #     select(Timestamp, Name, Age = `How old are you?`) %>%
  #     arrange(desc(Timestamp))
  # 
  #   DT::datatable(ss_dat)
  # })



})
