library(shiny)

shinyServer(
    function(input, output) {
        
        BMI <- function (weigth,height) 
            as.numeric(weigth) * 10000 / (as.numeric (height) * as.numeric (height))
            
        output$input_weigth <- renderPrint({input$Weigth} )
        output$input_height <- renderPrint({input$Height} )
        output$BMI_calculation <- renderPrint({BMI(input$Weigth, 
                                                   input$Height)})
    }
)