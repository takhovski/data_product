
library(shiny)
library(ggplot2)
data("mtcars")


shinyServer(
        function(input, output,session) {
                
                output$myPlot <- renderPlot({
                        my_parameters <- input$Parameters
                        
                        formul <- paste("mpg ~ ",my_parameters)
                        model1<- lm(formula = formul,data = mtcars)
                        ggplot(mtcars, aes_string(y = "mpg", x = my_parameters, colour = "as.factor(am)"))+geom_point()+geom_smooth()
                })
        }
)