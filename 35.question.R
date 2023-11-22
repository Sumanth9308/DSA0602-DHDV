#a. R Bar Chart for Student Attendance
student_attendance <- data.frame(
  "Student" = c("Student A", "Student B", "Student C", "Student D"),
  "Class Date" = c("2023-01-01", "2023-01-01", "2023-01-02", "2023-01-02"),
  "Attendance" = c("Present", "Absent", "Present", "Present"),
  stringsAsFactors = FALSE
)
library(ggplot2)

bar_chart <- ggplot(student_attendance, aes(x = Student, fill = Attendance)) +
  geom_bar(stat = "count", position = "dodge") +
  labs(title = "Student Attendance",
       x = "Student",
       y = "Count",
       fill = "Attendance") +
  theme_minimal()

print(bar_chart)


#b.Stacked Bar Chart for Most Recent Attendance Status
most_recent_attendance <- student_attendance[!duplicated(student_attendance$Student, fromLast = TRUE), ]

stacked_bar_chart <- ggplot(most_recent_attendance, aes(x = Student, fill = Attendance)) +
  geom_bar(stat = "count") +
  labs(title = "Most Recent Attendance Status",
       x = "Student",
       y = "Count",
       fill = "Attendance") +
  theme_minimal()

print(stacked_bar_chart)



#c.Scatter Plot for Relationship Between Class Date and Attendance
library(ggplot2)
data <- data.frame(
  Student = c("Student A", "Student B", "Student C", "Student D"),
  Class_Date = c("2023-01-01", "2023-01-01", "2023-01-02", "2023-01-02"),
  Attendance = c("Present", "Absent", "Present", "Present")
)
data$Class_Date <- as.Date(data$Class_Date)
ggplot(data, aes(x = Class_Date, y = Student, color = Attendance)) + 
  geom_point() +
  labs(title = "Relationship between Class Date and Attendance", x = "Class Date", y = "Student")

