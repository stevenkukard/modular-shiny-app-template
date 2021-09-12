
# INIT --------------------------------------------------------------------

library(shiny)
# library(tidyverse)
# library(snakecase)
# library(formattable)
# library(lubridate)
# library(DT)
# library(xts)
# library(PerformanceAnalytics)
# library(RSQLite)

# SOURCE FUNCTIONS
# source("functions/52-week-high.R")


# UI ----------------------------------------------------------------------

ui <- navbarPage("Title",
                 
                 tabPanel("TabName",
                          templateUI("namespace_id")
                 )
                 
                 # navbarMenu("More",
                 #            tabPanel("Table",
                 #                     DT::dataTableOutput("table")
                 #            )
                 # ),
                 
                 # selected = "Returns" # <<<
)


# SERVER ------------------------------------------------------------------

server <- function(input, output, session) {
  
  # CONNECT TO A SQLITE DATABASE
  # con_mkt <- dbConnect(RSQLite::SQLite(), "market-data.sqlite")
  
  # onStop( function() { 
  #   dbDisconnect(con_mkt)
  # }) 
  
  # table_names <- dbListTables(con_mkt)
  # sym_db <- dbReadTable(con_port, "symbols_database")
  # / connect to db
  
  templateServer("namespace_id", object_or_parameter_passed_to_module)
  
}


# RUN ---------------------------------------------------------------------

shinyApp(ui = ui, server = server)


# END ---------------------------------------------------------------------
