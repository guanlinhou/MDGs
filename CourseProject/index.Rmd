---
title       : Shiny Application and Reproducible Pitch
subtitle    : Achievements of Millennium Development Goals
author      : Guanlin Hou
job         : 
date        : March 18, 2016
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, quiz, bootstrap]  # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
github:
  user: guanlinhou
  repo: Shiny 
---

## Project Overview

The presentation is made in the context of the course "Developing Data Products". The goal of the presentation is to create a Shiny application demonstrating how the Millennium Development Goals have been achieved by country and by region.

The application "Millennium Development Goals (MDGs)" is deployed here: https://guanlinhou.shinyapps.io/MDGs/

The dataset used and source code for ui.R and server.R files can be found here: https://github.com/guanlinhou/Shiny

--- .class #id

## Shiny Application Functionality 
Use this app to understand how well each of the 8 goals has been achieved by different target dimensions. 

You can view the country tab by three types of graphs - Scatter, Column, or line. For each of the combination of goals and targets, we have different indicators for you to compare between countries, or the same countries over time (y axis). You can change the order of the countries shown in the graphs by different dimensions in x axis.

You can choose automatic playing under Scatter and Column to view different year data.

You can choose speicific country to focus on, and have different colour/size options for countries.

The region tab has two parts. The bottom chart shows the indicator for a combination of goal and target for Year 1990, Year 2000, and Year 2010. You can compare the same region change over decades, or compare different regions during the same time period.

The top geographic map ranks different regions on a scale from 0 to 5 based on the caculated result in the bottom chart.

---  .class #id

## Shiny Application Functionality - Country tab (Example)

<!-- Limit image width and height -->
<style type="text/css">
img {     
  max-height: 500px;     
  max-width: 964px; 
}
</style>
 
<!-- Center image on slide -->
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.min.js"></script>
<script type="text/javascript">
$(function() {     
  $("p:has(img)").addClass('centered'); 
});
</script>

![image](assets/img/country_Revised.png)

---  .class #id

## Shiny Application Functionality - Region tab (Example)
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.min.js"></script>
<script type="text/javascript">
$(function() {     
  $("p:has(img)").addClass('centered'); 
});
</script>

![image](assets/img/region.png)



