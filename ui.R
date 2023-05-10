#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui =  shinyUI(fluidPage(

    # Application title
    titlePanel("PHYTO ANALYSE"),
    em("Par Augustin Soulard"),
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            fileInput("file","Charger le fichier.csv"),
            helpText("5MB max"),
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))


# Run the application
setwd("~/Programmation/Github/PHYTO_ANALYSE")
shinyApp(ui = ui, server = server)
