#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
ui = shinyUI(fluidPage(
    titlePanel("File Input"),
    em("Par Augustin Soulard"),
    br(),
    sidebarLayout(
        sidebarPanel(
            fileInput("file","Charger le fichier.csv"), # fileinput() function is used to get the file upload contorl option
            helpText("5MB maximal"),
            tags$hr(),
            h5(helpText("Select the read.table parameters below")),
           # checkboxInput(inputId = 'header', label = 'Header', value = FALSE),
          #  checkboxInput(inputId = "stringAsFactors", "stringAsFactors", FALSE),
            br(),
          #  radioButtons(inputId = 'sep', label = 'Separator', choices = c(Comma=',',Semicolon=';',Tab='\t', Space=''), selected = ',')
        ),
        mainPanel(
            uiOutput("tb"),
            downloadButton("downloadData","Tableau des relevés"),
            downloadButton("downloadData2","Détails des espèces")
            
            # use below code if you want the tabset programming in the main panel. If so, then tabset will appear when the app loads for the first time.
            #       tabsetPanel(tabPanel("Summary", verbatimTextOutput("sum")),
            #                   tabPanel("Data", tableOutput("table")))
        )
        
    )
))

# Run the application
setwd("~/Programmation/Github/PHYTO_ANALYSE")
shinyApp(ui = ui, server = server)
