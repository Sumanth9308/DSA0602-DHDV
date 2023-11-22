#a.Bar chart
library(ggplot2)

# Create a data frame with the given customer ages
customer_ages <- data.frame(
  Age = c(28, 35, 42)
)

# Create a bar chart
ggplot(customer_ages, aes(x = Age)) +
  geom_bar() +
  labs(title = "Distribution of Customer Ages", x = "Age", y = "Count")

#b.pie chart
library(ggplot2)

# Create a data frame with the given customer genders
customer_genders <- data.frame(
  Gender = c("Female", "Male", "Female")
)

# Create a pie chart
ggplot(customer_genders, aes(x = "", fill = Gender)) +
  geom_bar(width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Distribution of Customers by Gender", fill = "Gender")


# Create a data frame with the given customer demographics
customer_demographics <- data.frame(
  Customer_ID = c(1, 2, 3),
  Age = c(28, 35, 42),
  Gender = c("Female", "Male", "Female"),
  Income = c(50000, 60000, 75000)
)

# Print the table
print(customer_demographics)



