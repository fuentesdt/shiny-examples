# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(ggplot2)

function(input, output,session) {

  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- read.csv("./trainingdata.csv", header = TRUE)
  }))

  # change HRPID selection box if row clicked
  observeEvent(input$table_rows_selected, system(paste('echo vglrun itksnap -g /rsrch1/ip/egates1/HistoricalRadPath/ProcessedData/Imaging/HRP0393/HRP0393_PREOP_T1.nii.gz',data$uid[input$table_rows_selected]),wait = T))

}
