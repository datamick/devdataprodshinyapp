# server.R
library(shiny)
library(UsingR)
data("wellbeing")
library(ggplot2)

# Define function to make plot
shinyServer(
        function(input, output) {
                
        # Build a reactive text
        text <- reactive({
                paste('Scatter Plot/Trend Line: Well-Being vs.', input$variable2)
        })
                
        # Return as text the selected variables
        output$caption <- renderText({
                text()
        })
        
        # Generate a plot of the requested variables
        output$plot <- renderPlot({
                p <- ggplot(wellbeing, aes_string(x=input$variable2, y=input$variable)) + geom_point() +
                geom_text(aes(label=Country), size=4) + stat_smooth(method="lm",size=1, linetype =3, se=FALSE)
                print(p)
        })
})


