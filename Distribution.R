# 几类分布的随机数直方图

library(shiny)

user <- fluidPage(
  actionButton(inputId = "norm", label = "Normal"),#正太分布标签
  actionButton(inputId = "unif", label = "Uniform"),#均匀分布 
  actionButton(inputId = "binom", label = "Binomial"),#二项分布
  actionButton(inputId = "exp", label = "Exponential"),#指数分布
  actionButton(inputId = "pois", label = "Poisson"),#泊松分布
  
  plotOutput("hist")
)

server <- function(input, output) {

  rv <- reactiveValues(data = rnorm(500000))

  observeEvent(input$norm, { rv$data <- rnorm(50000) })
  observeEvent(input$unif, { rv$data <- runif(50000) })
  observeEvent(input$binom, { rv$data <-rbinom(50000,10000,0.55) })#rbinom(n,size,prob) n表示生成的随机数数量，size表示进行贝努力试验的次数，prob表示一次贝努力试验成功的概率
#rexp（n,lamda=1） n表示生成的随机数个数，lamda=1/mean
  observeEvent(input$exp, { rv$data <-rexp(50000,1) })#lambda =1
  observeEvent(input$pois, { rv$data <-rpois(50000,2) })#lambda =2
  output$hist <- renderPlot({ 
    hist(rv$data,col = c("green","red","blue")) 
  })
}

shinyApp(ui = user, server = server)

