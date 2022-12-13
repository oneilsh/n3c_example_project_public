#* plot_person:
#*   attr:
#*     fillcolor: '#258915'
#*     fontsize: '20'
#*     shape: hexagon
#*   desc: A basic plot example.
#*   ext: R
#*   inputs:
#*   - person
#* 

# this is a basic plot example
library(ggplot2)

plot_person <- function(person) {
    p <- ggplot(person) +
      geom_histogram(aes(x = year_of_birth))

    plot(p)
    
    return(NULL)
}
