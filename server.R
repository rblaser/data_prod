library(shiny)
data(mtcars)
head(mtcars)
sub <- subset(mtcars, select = c(mpg, cyl, wt))

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$cyl_ct})
    output$distPlot <- renderPlot(
      {
        sub_cyl <- subset(sub, cyl == input$cyl_ct)
        mpg_mean <<- round(mean(sub_cyl$mpg), digits = 2)
        plot(sub_cyl$wt, sub_cyl$mpg, main = "MPG versus Vehicle Weight", xlab = "Vehicle Weight (tons)", ylab = "MPG (miles per gallon)")
      }
    )
    output$mpg_mean <- renderPrint({mpg_mean})
  }
)
  
