library(devtools) ## Load devtools
library(shiny) ## Load shiny
shinyServer(
        function(input, output) {
                output$oinput1 <- renderPrint({input$input1})
                output$oinput2 <- renderPrint({input$input2})
                output$oinput3 <- renderPrint({input$input3})
                output$otype <- renderPrint({input$type})
                typeInput <- reactive({
                        switch(input$type, "simple" = simple, "compounded" = compounded)
                })
                calc <- function(type, input1, input2, input3){
                        if (type == "simple") {
                                result <- input1 + (input1*(input2/100)*input3) ## For simple interest rate calculations
                        }
                        else if (type == "compounded") {
                                result <- input1*((1+(input2/100))^input3) ## For compounded interest rate calculations
                        }
                        print(result)
                }
                output$calculation <- renderPrint({calc(input$type, input$input1, input$input2, input$input3)})
        }
)



