//
//  StudentModel.swift
//  103-project-9
//
//  Created by Mike Miller on 6/1/26.
//

class Student{
    var name: String
    var grade: Double // 90.99
    
    init(name: String, grade: Double) {
        self.name = name
        self.grade = grade
    }
}

func studentAve (students: [Student]) -> Double {
    var total: Double = 0
    
    for student in students {
        total += student.grade
    }
    
    return total / Double(students.count)
}
