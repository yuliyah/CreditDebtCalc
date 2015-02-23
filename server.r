

debt <- function(credit, apr) credit*(1+0.01*apr)
debt2<-function(credit, apr) credit*(1+0.01*apr/365)^365
shinyServer(
  function(input, output) {
    
    output$debt <- renderPrint({debt(input$credit,input$apr)})
  
    output$compapr <- renderPrint({debt2(input$credit, input$apr)})
    
    output$helpscreen<-renderPrint("In general, credit cards available to middle-class cardholders that range in credit limit from $1,000 to $30,000 calculate the finance charge by methods that are exactly equal to compound interest compounded daily, although the interest is not posted to the account until the end of the billing cycle. A high U.S. APR of 29.99% carries an effective annual rate of 34.96% for daily compounding and 34.48% for monthly compounding, given a year with 12 billing periods and 365 days."
  )
  
  }
)