//
//  Question.swift
//  QuizzZZ
//
//  Created by Григорий Душин on 08.02.2025.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
