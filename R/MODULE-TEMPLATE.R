
# UI ----------------------------------------------------------------------

templateUI <- function(id) {
  
  ns <- NS(id)
  
  verbatimTextOutput(ns("printText"))
  
  # Example
  # sidebarLayout(
  #   sidebarPanel(
  #   ),
  #   mainPanel(
  #   )
  # )
  
} # ui function


# SERVER ------------------------------------------------------------------

templateServer <- function(id, object_or_parameter_passed_to_module) {
  
  moduleServer(
    id,
    
    function(input, output, session) {
      
      output$printText <- renderPrint({
        "Hello world"
      })
      
    } # function
    
  ) # moduleServer
} # module server function


# END ---------------------------------------------------------------------