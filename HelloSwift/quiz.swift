//
//  quiz.swift
//  HelloSwift
//
//  Created by UCode on 11/18/17.
//  Copyright © 2017 Cloudthunder. All rights reserved.
//

import Foundation

struct Answer {
    let text: String
    let isCorrect: Bool
}

struct Question {
    let text: String
    let answers: [Answer]
    let worth: Double
    
    
}

struct Quiz {
    let questions: [Question]
    var score: Double
}

func quizProgram() {
    
    
    let question1 = Question(
        text: "What is the powerhouse of the cell?",
        answers: [
            Answer(text: "Ribosome", isCorrect: false),
            Answer(text: "Mitochondria", isCorrect: true),
            Answer(text: "Golgi Apparatus", isCorrect: false),
            Answer(text: "Nucleus", isCorrect: false)
            
        ],
        worth: 100.0
    )
    
    let question2 = Question(
        text: "Which of the following is not alive?",
        answers: [
            Answer(text: "Biotic Factor", isCorrect: false),
            Answer(text: "Predator", isCorrect: false),
            Answer(text: "Scavenger", isCorrect:false),
            Answer(text: "Abiotic Factor", isCorrect: true)
            
        ],
        worth: 100.0)
    
    let question3 = Question(
        text: "Which of Newton's Laws of Motion state that every action has an equal but opposite reaction?",
        answers: [
            Answer(text: "1st Law", isCorrect: false),
            Answer(text: "2nd Law", isCorrect: false),
            Answer(text: "3rd Law", isCorrect: true),
            Answer(text: "4th Law", isCorrect: false)
            
        ],
        worth: 200.0)
    
    var quiz = Quiz(
        questions: [question1, question2, question3],
        score: 0.0
    )
    
    print("two plus two is four minus one thats three quick maths")
    
    for currentQuestion in quiz.questions {
        
        let correctAnswers = currentQuestion.answers.filter { $0.isCorrect }
        
        print(currentQuestion.text)
        
        for (index, currentAnswer) in currentQuestion.answers.enumerated() {
            print("\(index + 1) \(currentAnswer.text)")
        }
        
        let response = readLine()
        
        if let unwrappedResponse = response {
            let choice = Int(unwrappedResponse)!
            if currentQuestion.answers[choice - 1].isCorrect {
                quiz.score += currentQuestion.worth
                print("Good job")
                print(quiz.score)
                print("\n")
            }
            else {
                print("No")
                print(quiz.score)
                print("\n")
            }
            for correctAnswer in correctAnswers {
                print("The correct answer is \(correctAnswer.text)")
            }
        }
        
    }
    
    
}























