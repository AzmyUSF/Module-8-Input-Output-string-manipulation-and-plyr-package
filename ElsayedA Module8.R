# Install and load the required packages
install.packages("plyr")
library(plyr)

# Import the dataset from the specified path
Student_assignment_6 <- read.table("C:/Users/ahmed/Downloads/Assignment 6 Dataset.txt", header = TRUE, sep = ",")

# Calculate the mean of the 'Grade' column based on 'Sex'
StudentAverage <- ddply(Student_assignment_6, "Sex", transform, Grade.Average = mean(Grade))

# Write the result to a file
write.table(StudentAverage, "Students_Gendered_Mean.txt")

# Filter the data to include only rows where the 'Name' column contains the letter 'i'
i_students <- subset(Student_assignment_6, grepl("[iI]", Student_assignment_6$Name))

# Write this subset to a file
write.table(i_students, "Filtered_Students.txt", sep = ",")

# Write the filtered data to a CSV file
write.csv(i_students, "Filtered_Students.csv")