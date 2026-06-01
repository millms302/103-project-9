import UIKit

// Uses an array to store the names of at least 5 students.
var students: [String] = ["Josh", "Ty", "Sam", "Gavin", "Eve"]


// Uses a dictionary to store each student’s grades, where the KEY is the student’s name and the VALUE is an array of grades.
var grades: [String: [Int]] = [
    "Ben": [80, 90, 85],
    "Sam": [70, 80, 90],
    "Matt": [90, 95, 100],
    "Seb": [75, 85, 90],
    "Dani": [88, 92, 85]
]

print("Student Records:\n")

// Loop to iterate through the array of student names
for student in students {
    
    // Get the student's grades
    let studentGrades = grades[student]!
    
    // calculate the grades added up to a total
    var total = 0
    
    for grade in studentGrades {
        total = total + grade
    }
    
    // Calculate the average by dividing the amount of grades to the total
    let average = total / studentGrades.count
    
    // Prints a summary of each student’s grades, including their average grade.
    print("Student: \(student)")
    print("Grades: \(studentGrades)")
    print("Average: \(average)")
    print()
}



// Extra Challenge: Add functionality to identify and print the student with the highest average grade.
func findTopStudent(studentList: [String], gradeBook: [String: [Int]]) {
    
    var highestAverage = 0
    var topStudent = ""
    
    for student in studentList {
        
        let studentGrades = gradeBook[student]!
        
        var total = 0
        
        for grade in studentGrades {
            total += grade
        }
        
        let average = total / studentGrades.count
        
        if average > highestAverage {
            highestAverage = average
            topStudent = student
        }
    }
    
    print("Student with highest grade: \(topStudent), Average: \(highestAverage)")
    print("Congradulations \(topStudent), for being the top of the class!")
}

// Call the function
findTopStudent(studentList: students, gradeBook: grades)
