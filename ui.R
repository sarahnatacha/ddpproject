
library('shiny')

shinyUI(
    
    pageWithSidebar(
        
        headerPanel("Find out what your your Body Mass Index is"),
        
        sidebarPanel(
            
            numericInput('weightp', 'Your weight (Pounds)', 160, step = 1) ,
            numericInput('height', 'Insert your height in Inches', 70, step = 0.1),
            
            submitButton('Calculate')
            
        ), 
        
        mainPanel(
            p('Body mass index (BMI) is a measure of body fat based on your weight in relation to your 
              height, and applies to most adult men and women aged 20 and over. For children aged 2 and over, 
              BMI percentile is the best assessment of body fat.\n'),
            
            p(textOutput("inputweightvalue")),

            h4('Your BMI is:'),
            verbatimTextOutput("bmi"),
            p('It indicates that you are '),strong(textOutput("bmianalysisresult"))
            
            )
        
        )   
    
)