import Foundation


//print("Enter your fahrenheit.")
//let f = Double(readLine()!)
//
//    if f != nil {
//print((5.0/9.0)*(f! - 32.0))
//}
//    else {
//        print("Put a number")
//}

func cToF(c: Double) -> Double {
    return (9.0/5.0) * c + 32.0
}

func fToC(f: Double) -> Double {
    return (5.0/9.0) * (f - 32.0)
}

func cToK(c: Double) -> Double {
    return c + 273.15
}
func kToC(k: Double) -> Double {
    return k - 273.15
}

func fToK(f: Double) -> Double {
    return cToK(c:fToC(f: f))
}

func kToF(k: Double) -> Double {
    return cToF(c:kToC(k: k))
}

//print("Choose your fighter")
//let x = readLine()
//
//if let _temp = x {
//    
//    let temp = _temp.components(separatedBy: " ")
//    
//    if temp[1] == "K" {
//        print("\(kToC(k: Double(temp[0])!)) C")
//        print("\(kToF(k: Double(temp[0])!)) F")
//    }
//    
//    else if temp[1] == "F" {
//        print( "\(fToC(f: Double(temp[0])!)) C")
//        print( "\(fToK(f: Double(temp[0])!)) K")
//    }
//    
//    else if temp[1] == "C" {
//        print( "\(cToF(c: Double(temp[0])!)) F")
//        print( "\(cToK(c: Double(temp[0])!)) K")
//    }
//    
//    else {
//        print("Please enter a valid temperature unit")
//    }
//    
//
//    
//}

var score           = 0
let questions       = [
    (
        value:    50,
        question: "Which of the following programming languages is OOP?",
        answers: [
            (
                correct: false,
                answer: "C"
            ),
            (
                correct: false,
                answer: "SQL"
            ),
            (
                correct: true,
                answer: "C#"
            ),
            (
                correct: false,
                answer: "Haskell"
            )
        ]
    ),
    (
        value:    50,
        question: "Which of the following is a C# list method?",
        answers: [
            (
                correct: true,
                answer: ".Contains"
            ),
            (
                correct: false,
                answer: ".Sort"
            ),
            (
                correct: false,
                answer: ".Copy"
            ),
            (
                correct: false,
                answer: ".Reverse"
            )
        ]
    )
]



for question in questions {
    
    print(question.question)
    
    for (index, answer) in question.answers.enumerated() {
        print("  \(index + 1): \(answer.answer)")
    }
    
    let rawResponse = readLine()
  
    if let response = rawResponse {
        
        let responseIndex = Int(response)! - 1
        
        if question.answers[responseIndex].correct {
            score += question.value
        }
        
    }
    
    
}

print(score)

//gulp
