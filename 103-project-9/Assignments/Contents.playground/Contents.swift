import UIKit

// Create a student class
class Student {
    var name: String
    var age: Int
    var grades: [Int]
    
    init(name: String, age: Int, grades: [Int]) {
        self.name = name
        self.age = age
        self.grades = grades
    }
    
    // Calculate average grade
    func averageGrade() -> Double {
        let total = grades.reduce(0, +)
        return Double(total) / Double(grades.count)
    }
    
    // pass or failing grade for average
    func isPassing() -> Bool {
        return averageGrade() >= 60
    }
}

// Students
let student1 = Student(name: "Fat Mike", age: 66, grades: [12, 45, 84])
let student2 = Student(name: "Smelly", age: 65, grades: [94, 88, 92])
let student3 = Student(name: "El Hefe", age: 55, grades: [74, 70, 80])

let students = [student1, student2, student3]

for student in students {
    print("Student: \(student.name)")
    print("Average: \(String(format: "%.2f", student.averageGrade()))")
    print("Status: \(student.isPassing() ? "Passing" : "Failing")")
    print()
}


let courseAverage = students.map { $0.averageGrade() }.reduce(0, +) / Double(students.count)

print("Course Average: \(String(format: "%.2f", courseAverage))")

// Find highest average (extra challeng)
if let topStudent = students.max(by: { $0.averageGrade() < $1.averageGrade() }) {
    print("\nTop Student: \(topStudent.name)")
    print("Highest Average: \(String(format: "%.2f", topStudent.averageGrade()))")
}
