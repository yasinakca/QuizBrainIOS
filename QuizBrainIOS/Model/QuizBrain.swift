//
//  QuizBrain.swift
//  QuizBrainIOS
//
//  Created by Yasin AKCA on 18.10.2020.
//

import Foundation
struct QuizBrain {
    var questions = [
        Question(q: "q1",a: "True"),
        Question(q: "q2",a: "False"),
        Question(q: "q3",a: "True"),
        Question(q: "q4",a: "False"),
        Question(q: "q5",a: "True"),
        Question(q: "q6",a: "False"),
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(userAnswer: String) -> Bool{
        if questions[questionNumber].answer == userAnswer {
            score += 1
            return true
        }else {
            return false
        }
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < questions.count {
            questionNumber += 1
        }else{
            questionNumber = 0
            score = 0
        }
    }
    
    func getQuestionText() -> String{
        return questions[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(questions.count)
    }
    
    func getScore() -> Int{
        return score
    }
}
