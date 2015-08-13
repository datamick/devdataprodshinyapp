# ui.R

# Define ui.R
shinyUI(pageWithSidebar(
        
        # Application title
        headerPanel("Well-Being of European Countries"),
        
        # Sidebar with controls to select the variable to plot against well being index
        sidebarPanel(
               helpText("This scatterplot shows the well-being of 22 European",
                        "countries against 10 different economic/social measures.  A trend line is calculated",
                        "as each measure is presented."),
               br(),
                helpText("The well-being axis remains constant, while you are able to select different economic/social measures",
                        "and view the resulting trend."),
                selectInput("variable", "Well Being Index:",
                            list("Well Being index" = "Well.being")),
               helpText("Select a measure and view the changes in the chart."),

                selectInput("variable2", "Economic/Social Measure:",
                            list("GDP" = "GDP",
                                 "Equality"  = "Equality",
                                 "Food Consumption" = "Food.consumption",
                                 "Alcohol Consumption" = "Alcohol.consumption",
                                 "Energy Consumption" = "Energy.consumption",
                                 "Family" = "Family",
                                 "Working Hours" = "Working.hours",
                                 "Work Income" = "Work.income",
                                 "Health Spending" = "Health.spending",
                                 "Military Spending" = "Military.spending"))
        ),
        
        mainPanel(
                h3(textOutput("caption")),
                plotOutput("plot")
        )
))
