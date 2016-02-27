library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("My shiny data product"),
    
    sidebarPanel(
        
        h4('Set your weigth and height'),
        
        sliderInput('Weigth', 'Input weigth (kilograms)', min = 40, max = 200,
                    value = 40, step = 1, round = 0),

        sliderInput('Height', 'Input height (centimeters)', min = 100, max = 250,
                    value = 100, step = 1, round = 0)
        
    ),

    mainPanel(
        h3('Your BMI calculation'),
        p('Your weigth is'),
        verbatimTextOutput("input_weigth"),
        
        p('Your height is'),
        verbatimTextOutput('input_height'),
        
        p('Your BMI is'),
        verbatimTextOutput('BMI_calculation'),
        
        p('BMI Categories: '),
        p('Underweight = < 18.5'),
        p('Normal weight = 18.5-24.9 '),
        p('Overweight = 25-29.9'), 
        p('Obesity = BMI of 30 or greater')
        
    )
))