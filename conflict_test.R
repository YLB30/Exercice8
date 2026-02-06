install.packages("ggplot2")
install.packages("dplyr")

library(ggplot2)
library(dplyr)

# Load the mtcars dataset
data("mtcars")

# Data manipulation: Add a factor column for cylinders
mtcars <- mtcars %>%
  mutate(cyl_factor = factor(cyl, levels = c(4, 6, 8), labels = c("4 Cyl", "6 Cyl", "8 Cyl")))
summary_table <- aggregate(
  mpg ~ cyl_factor,
  data = mtcars,
  FUN = mean,
  na.rm = TRUE
)
print(summary_table)