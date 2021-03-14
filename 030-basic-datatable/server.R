# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(ggplot2)

function(input, output,session) {

  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- read.csv("./trainingdata.csv", header = TRUE)
    data
  }))

  # change HRPID selection box if row clicked
  system('echo vglrun itksnap -g /rsrch1/ip/egates1/HistoricalRadPath/ProcessedData/Imaging/HRP0393/HRP0393_PREOP_T1.nii.gz',wait = F)
  observeEvent(input$table1_rows_selected, observeEvent(input$table1_rows_selected, system('echo vglrun itksnap -g /rsrch1/ip/egates1/HistoricalRadPath/ProcessedData/Imaging/HRP0393/HRP0393_PREOP_T1.nii.gz',wait = F))
  )
}
