#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(
  pageWithSidebar(
    
    headerPanel("Music and movie prediction"),
    sidebarPanel(
      textInput('mood', label="How are you feeling ?(happy, sad, alone, angry, bitchy, blank, 
              confused, depressed, energetic, geeky, high, lazy, pleased)"),
      textInput('movie', label="movie genre (action, musicals, biopic, period, romance, animation, 
              science fiction, cult, disaster, spy, drama, fantasy, thriller, gangster, war, 
                westerns, horror)"),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Suggested song and movie'),
      h4('You are feeling'),
      verbatimTextOutput("inputValue"),
      h4('very well then, consider listening to this song '),
      verbatimTextOutput("prediction"),
      h4('You are interested in this genre'),
      verbatimTextOutput("inputValue2"),
      h4('so you may watch this movie '),
      verbatimTextOutput("prediction2")
    )
  )
)