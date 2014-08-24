library(devtools) ## Load devtools
library(shiny) ## Load shiny
shinyUI(pageWithSidebar(
        headerPanel("Calculate Simple or Compounded Interest Rate"),
        sidebarPanel(
                h4('Enter the following:'),
                numericInput('input1', 'Principal (USD)', 0, min = 0),
                numericInput('input2', 'Annual Rate (%. For example: 3.75 for 3.75%)', 0, min = 0, step = 0.00001), 
                numericInput('input3', 'Time (years)', 0, min = 0),
                selectInput('type', 'Choose a type of interest', choices = c("simple", "compounded")),
                submitButton('Submit')
        ),
        mainPanel(
                h4('For principal, you entered:'),
                verbatimTextOutput("oinput1"),
                h4('For annual rate, you entered:'),
                verbatimTextOutput("oinput2"),
                h4('For time, you entered:'),
                verbatimTextOutput("oinput3"),
                h4('For type of interest, you entered:'),
                verbatimTextOutput("otype"),
                h4('Which will result in an accumulative amount of:'),
                verbatimTextOutput("calculation")
        )
))
