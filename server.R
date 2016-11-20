library(shiny) 

BMIcalculator <- function(weight,height) {weight/(height^2)*703}

weightkg <- function(weight) {weight/2.2}

bmianalysis <- function(weightp,height){
 
    BMI_value <- BMIcalculator(weightp,height)
  
    ifelse(BMI_value<18.5,"Underweight",ifelse(BMI_value<25,"Healthy",ifelse(BMI_value>30,"Overweight")))
}



shinyServer(
    
    function(input, output) {    
        output$inputweightvalue <- renderText({paste ('You are ',input$weightp, ' pounds ( ',round(weightkg(input$weightp),2),' kilos) and ',input$height, ' high.')})
        output$bmi <- renderText({BMIcalculator(input$weightp,input$height)})
        output$bmianalysisresult <- renderText({bmianalysis(input$weightp,input$height)})
        
        
    } 
    
)