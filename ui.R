library(shiny)
library(ggplot2)

data("mtcars")
shinyUI(
        pageWithSidebar(
                headerPanel("Better MPG: Automatic or Manual Gear?"),
                
                sidebarPanel(
                        selectInput("Parameters", "
                                    Please, select the porperties you want to be included in you GLM",choices =c("cyl","hp","disp"))
                ),
                
                mainPanel("Regression line of mpg for automatic (0) vs manual gear(1)",
                          plotOutput("myPlot"),
                          "mpg:Miles/(US) gallon | cyl:Number of cylinders
                          disp: Displacement (cu.in.)
                          hp: Gross horsepower" )
                
        )
)