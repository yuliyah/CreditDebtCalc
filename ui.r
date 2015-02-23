shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Credit Debt Calculator"),
    sidebarPanel(
      h4 ("Instructions")
     ,p("This application is calculating Credit Debt accumulated in 1 year with a certain Annual Percentage Rate applied. Enter the Base Credit Amount and Annual Percentage Rate (APR), press Submit button and the application will calculate how much you will owe in 1 year.  It will also calculate the amount you will awe if APR is compounding daily. For more detailed explanation of APR and APR compounding daily please refer to the Help tab.")
      , numericInput('credit', 'Base Credit Amount', 1000, min = 100, max = 100000000, step = 100)
      , numericInput('apr', 'APR (Annual Percentage Rate)', 3, min=0, max=50, step =1)
      , submitButton('Submit')
    ),
    
    mainPanel(
      
      tabsetPanel(
        
       
        tabPanel("Debt Calc",
   
      h3('Results')
      
      ,h4('1 Year Credit Debt with APR Applied ')
      
      ,verbatimTextOutput("debt")
      , h4('1 Year Credit Debt with Daily Compounding APR Applied')
      , verbatimTextOutput("compapr")
    )
    ,tabPanel(
      "Help", 
           verbatimTextOutput("helpscreen"))
    

    
    )
  
  
)
)
)