#tidyverse helps access datasets/functions we need

library(tidyverse)
#line of code tells you which functions from tidyverse conflict with functions in base R

mpg 
?mpg
# ? before mpg will give you information on mpg data set 

#My first plot!
library(tidyverse)
mpg
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))


#displ = displacement ( a car's engine size, in liters)
#hwy= a car fuel's effeciency on the highway in miles per gallon (mpg)



#first argument of ggplot() is the data set t

ggplot(data = mpg)
#creates an empty graph 
#Add layers of points to your plot, which creates a scatter plot 
#mapping argument is always paired with aes ()
#the x and y arguments specifiy which variables to may on x and y acis 

# ggplot(data = <DATA>) + <GEOM_FUNCTION> (mapping = aes(<MAPPINGS>))o use in the graoh 

#My second plot!
library(tidyverse)
mpg
ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y = cyl ))

#My third plot!
library(tidyverse)
mpg
ggplot(data = mpg) +
  geom_point(mapping = aes (x = class, y = drv ))

#class variable of the mpg dataset classifies cars into groups (e.g. compact, midsize, and SUV)
#can add third variable to graph by mapping it to an aesthetic 
#aesthetic is visual property of objects in plot 
#aesthetic include things like size, shape, color of data points 
# use "leve" to describe aesthetic properties 

library(tidyverse)
mpg
ggplot(data = mpg) +
  geom_point(mapping = aes (x = displ, y = hwy, color = class ))

#You can set the aesthetic properties of your geom manually, see below: 
library(tidyverse)
mpg
ggplot( data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

#color doesn't convey information about a variable, but only changes appearance of the plot 
#R has built in shapes that are identified by numbers; dupplicates have diferences in "color" and "fill"
#EXERCISES:
#1 If color is inside the parenthesis then all the datapoint colors are changed (doesn't tell you anything about data)

library(tidyverse)
mpg 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = "blue")) 
#WRONG because blue is on inside 

#2 Continus vs. categorical
  #Continuous can take any variable from integer to decimal
  #Categorical value is limited based on finite group (e.g countries, year, gender, occupation )

#3 Map a continuous variable to color, size, and shape  
library(tidyverse)
mpg 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = class), color = "blue", shape = "square" )

#4 map multiple variables
library(tidyverse)
mpg 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class, shape = class))
#you applied shape and color to class, so each class has a unique color and shape 

#5 Stroke aesthetic 
library(tidyverse)
mpg 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, stroke = cyl) )
?mpg


#6
library(tidyverse)
mpg 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5) ) 
# --> Graph becomes true/false (with points past 5 being false, and those under 5 being true)

# Note: "+" must come at the END of a line, not at the start of onef
# Facets are another way to add variables (especially categorical variables)
  #Use face_wrap( )

library(tidyverse)
mpg 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy) )+
  facet_wrap(~class, nrow = 2)

?nrow
?mpg

#two variables use facet_grind ()
library(tidyverse)
mpg 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy) )+
  facet_grid(drv ~ cyl)

#facet with out rows/columns
library(tidyverse)
mpg 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy) )+
  facet_grid(. ~ cyl)

?mpg

#1 facet continuous variable 

library(tidyverse)
mpg 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy) )+
  facet_wrap(~displ, nrow = 2)

#QUESTION --> what is nrow??
#breaks up for every numerical value 

#2 what do the empty sells mean?...not sure 
library(tidyverse)
mpg 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = drv, y = cyl) )

#3
library(tidyverse)
mpg 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy) )+
  facet_grid(drv ~ .)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy) )+
  facet_grid(. ~ cyl)
#NOTE: 4 stands for four-whell drive; f stands for front-wheel drive, r stands for rear-wheel drive

#4
library(tidyverse)
mpg 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy) )+
  facet_wrap(~class, nrow = 2)

# TUESDAY TEST 
#ANGELA I AM CHANGING THIS. SEND IT BACK XO 
# THX  
#They think we are actually dumbasses, which honestly is a fair assessment