//
//  Question.swift
//  QuizBrainIOS
//
//  Created by Yasin AKCA on 18.10.2020.
//

import Foundation

struct Question{
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
