//
//  School.swift
//  HelloSwift
//
//  Created by UCode on 12/2/17.
//  Copyright © 2017 The Illuminati. All rights reserved.
//

import Foundation

class Student : Human {
    
    let id: Int
    var gpa: Double
    
    override init () {
         id = 0
         gpa = -1.0
        super.init()
    }
    
    override var description : String {
        return "\(name) (id:\(id)) with GPA \(gpa)"
    }
    
}

class Teacher : CustomStringConvertible {
    var name : String
    var description: String {
        return "Hello! My name is \(name)!"
    }
    
    
    init () {
        name = "Bot"
    }
}

class Human : CustomStringConvertible {
    var name : String
    var description : String {
        return "A normal human being with the name \(name)"
    }
    
    init() {
        name = "Name"
    }
}

class Class : CustomStringConvertible {
    
    var students : [Student]
    var subject : String
    var id : String
    var teacher : Teacher
    
    var description: String {
        return "Welcome to \(subject) \(id)! Your classmates are \(students) and you will be taught by \(teacher)"
    }
    
    init() {
        students = [Student]()
        subject = "Education"
        id = "101"
        teacher = Teacher()
    }
}


func schoolProgram() {
    let myStudent = Student()
    print(myStudent)
   
    
}
