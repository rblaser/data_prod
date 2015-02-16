library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("MPG versus Number of CYL"),
  
    sidebarPanel(
      numericInput('cyl_ct', 'Enter number of Cylinders (4,6,8)', 6, min = 4, max = 8, step = 2),
      submitButton("Submit")
    ),
    mainPanel(
      p("This Shiny App is for the Course Project of Developing Data Products."),
      p("\n"),
      p("The purpose of this app is to provide the resultant MPG based on the selected the number of CYL."),
      p("\n"),
      p("Simply select the number of CYL in the side panel.  The number should be 4, 6 or 8."),
      p("\n"),
      p("Hit the submit button and the app will calculate the resultant mean MPG for the selected the number of CYL."),
      p("\n"),
      p("In addition, the app will plot the MPG versus WT for the selected the number of CYL."),
      p("\n"),
      p("The data is based on the mtcars data set (extracted from the 1974 Motor Trend US magazine)."),
      h3('MPG results of selecting the number of CYL'),
      h4('You entered the following number of CYL:'),
      verbatimTextOutput("inputValue"),
      h4('The mean MPG for this number of CYL is:'),
      verbatimTextOutput("mpg_mean"),
      h4('Selecting the above CYL number resulted in the following MPG vs WT for this number of CYL:'),
      plotOutput("distPlot")
    )
  )
)
