library(shiny)
shinyUI (pageWithSidebar(
  #Specify Application title
  headerPanel ("Millennium Development Goals (MDGs)"),        
  #Sidebar with controls to select the variable to plot against match result
  sidebarPanel 
  (
    #####Subgoal of GOAL
    selectInput("goal", strong("Please select your interested goal:"),
                c("Goal1: ERADICATE EXTREME POVERTY & HUNGER"="goal1",
                  "Goal2: ACHIEVE UNIVERSAL PRIMARY EDUCATION"="goal2",
                  "Goal3: PROMOTE GENDER EQUALITY AND EMPOWER WOMEN"="goal3",
                  "Goal4: REDUCE CHILD MORTALITY"="goal4",
                  "Goal5: IMPROVE MATERNAL HEALTH"="goal5",
                  "Goal6: COMBAT HIV/AIDS, MALARIA AND OTHER DISEASES"="goal6",
                  "Goal7: ENSURE ENVIRONMENTAL SUSTAINABILITY"="goal7",
                  "Goal8: DEVELOP A GLOBAL PARTNERSHIP FOR DEVELOPMENT"="goal8"),
                multiple=F),
    
    conditionalPanel(
      condition = "input.goal == 'goal1'",
      selectInput("target1", strong("Please select your interested target:"),
                  c("Target 1.A: Halve, between 1990 and 2015, the proportion of people whose income is less than $1.25 a day "="target1.1",
                    "Target 1.B: Achieve full and productive employment and decent work for all, including women and young people"="target1.2",
                    "Target 1.C: Halve, between 1990 and 2015, the proportion of people who suffer from hunger"="target1.3"))
    ),
    
    conditionalPanel(
      condition = "input.goal == 'goal2'",
      selectInput("target2", strong("Please select your interested target:"),
                  c("Target 2.A: Ensure that, by 2015, children everywhere, boys and girls alike, will be able to complete a full course of primary schooling"="target2.1"))
    ),
    
    conditionalPanel(
      condition = "input.goal == 'goal3'",
      selectInput("target3", strong("Please select your interested target:"),
                  c("Target 3.A: Eliminate gender disparity in primary and secondary education, preferably by 2005, and in all levels of education no later than 2015"="target3.1"))
    ),
    
    conditionalPanel(
      condition = "input.goal == 'goal4'",
      selectInput("target4", strong("Please select your interested target:"),
                  c("Target 4.A: Reduce by two thirds, between 1990 and 2015, the under-five mortality rate"="target4.1"))
    ),
    
    conditionalPanel(
      condition = "input.goal == 'goal5'",
      selectInput("target5", strong("Please select your interested target:"),
                  c("Target 5.A: Reduce by three quarters the maternal mortality ratio"="target5.1",
                    "Target 5.B: Achieve universal access to reproductive health"="target5.2"))
    ),
    
    conditionalPanel(
      condition = "input.goal == 'goal6'",
      selectInput("target6", strong("Please select your interested target:"),
                  c("Target 6.A: Have halted by 2015 and begun to reverse the spread of HIV/AIDS"="target6.1",
                    "Target 6.B: Achieve, by 2010, universal access to treatment for HIV/AIDS for all those who need it"="target6.2",
                    "Target 6.C: Have halted by 2015 and begun to reverse the incidence of malaria and other major diseases"="target6.3"))
    ),
    
    conditionalPanel(
      condition = "input.goal == 'goal7'",
      selectInput("target7", strong("Please select your interested target:"),
                  c("Target 7.A: Integrate the principles of sustainable development into country policies and programmes and reverse the loss of environmental resources"="target7.1",
                    "Target 7.B: Reduce biodiversity loss, achieving, by 2010, a significant reduction in the rate of loss"="target7.2",
                    "Target 7.C: Halve, by 2015, the proportion of the population without sustainable access to safe drinking water and basic sanitation"="target7.3",
                    "Target 7.D: Achieve, by 2020, a significant improvement in the lives of at least 100 million slum dwellers"="target7.4"))
    ),
    
    conditionalPanel(
      condition = "input.goal == 'goal8'",
      selectInput("target8", strong("Please select your interested target:"),
                  c("Target 8.A: Develop further an open, rule-based, predictable, non-discriminatory trading and financial system "="target8.1",
                    "Target 8.B: Address the special needs of least developed countries"="target8.2",
                    "Target 8.C: Address the special needs of landlocked developing countries and small island developing States "="target8.3",
                    "Target 8.D: Deal comprehensively with the debt problems of developing countries "="target8.4",
                    "Target 8.E: In cooperation with the private sector, make available benefits of new technologies, especially information and communications "="target8.5"))
    )
    
  ),
  
  
  mainPanel(
    tabsetPanel(
      tabPanel("country",h4("By Country"),htmlOutput("motionchart_country")),
      tabPanel("region",h4("By Region"),htmlOutput("region_chart")))
  )
)
)
