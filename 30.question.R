# a.Bar chart
student_scores <- data.frame(
  "Student" = c("Student A", "Student B", "Student C", "Student D"),
  "Math" = c(85, 76, 92, 88),
  "Science" = c(92, 88, 79, 95),
  "History" = c(78, 89, 87, 82)
)

barplot(as.matrix(student_scores[,2:4]), beside = TRUE, col = c("red", "green", "blue"), 
        main = "Student Exam Scores", xlab = "Students", ylab = "Scores")
legend("topright", inset = 0.05, title = "Subjects", c("Math", "Science", "History"), fill = c("red", "green", "blue"))


# b.Stacked bar chart
student_scores <- data.frame(
  "Student" = c("Student A", "Student B", "Student C", "Student D"),
  "Math" = c(85, 76, 92, 88),
  "Science" = c(92, 88, 79, 95),
  "History" = c(78, 89, 87, 82)
)

student_scores_long <- reshape2::melt(student_scores, id.vars = "Student")

ggplot(student_scores_long, aes(x = Student, y = value, fill = variable)) + 
  geom_bar(stat = "identity") + 
  labs(title = "Student Exam Scores", x = "Students", y = "Scores") + 
  scale_fill_manual(values = c("red", "green", "blue"), name = "Subjects")


# C.Scatter plot
student_scores <- data.frame(
  "Student" = c("Student A", "Student B", "Student C", "Student D"),
  "Math" = c(85, 76, 92, 88),
  "Science" = c(92, 88, 79, 95),
  "History" = c(78, 89, 87, 82)
)

ggplot(student_scores, aes(x = Math, y = History)) + 
  geom_point() + 
  labs(title = "Math vs History", x = "Math", y = "History")
