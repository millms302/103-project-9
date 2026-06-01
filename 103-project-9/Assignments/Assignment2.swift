//
//  Assignment2.swift
//  103-project-9
//
//  Created by Mike Miller on 6/1/26.
//

import SwiftUI

struct StudentView: View {
    
    @State private var studentsList: [Student] = [
        Student(name: "Soupy", grade: 86),
        Student(name: "Matty", grade: 95),
        Student(name: "Nick", grade: 87),
        Student(name: "Kennedy", grade: 72)
    ]
    
    @State private var newStudentName: String = ""
    @State private var newStudentGrade: String = ""
    @State private var sorted: Bool = true
    
    private var sortedStudents: [Student] {
        studentsList.sorted{ sorted ? $0.grade < $1.grade : $0.grade > $1.grade }
    }
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                Text("Average Grade: \(studentAve(students: studentsList), specifier: "%.2f")")
                    .font(.subheadline)
                
                List(sortedStudents, id: \.name) { student in
                    HStack {
                        Text("Student: \(student.name)")
                        Spacer()
                        Text("Grade: \(student.grade, specifier: "%.2f")")
                    }
                }
                
                HStack {
                    
                    TextField("Name", text: $newStudentName)
                        .padding()
                        .frame(height: 50)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(15)
                    
                    TextField("Grade", text: $newStudentGrade)
                        .padding()
                        .frame(height: 50)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(15)
                    
                    Button("Add Student") {
                        
                        guard let gradeValue = Double(newStudentGrade) else {
                            return
                        }
                        
                        let newStudent = Student(
                            name: newStudentName,
                            grade: gradeValue
                        )
                        
                        studentsList.append(newStudent)
                        
                        newStudentName = ""
                        newStudentGrade = ""
                    }
                }
                .padding(15)
                
            } // END VStack
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    Button(sorted ? "Lowest Grade First" : "Highest Grade First") {
                        sorted.toggle()
                    }
                    .padding(0)
                    .background(Color.blue.opacity(0.8))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
            }
            .navigationTitle("Student Grades:")
            .navigationBarTitleDisplayMode( .inline)
            
        } // END NavigationStack
    }
}

#Preview {
    StudentView()
}
