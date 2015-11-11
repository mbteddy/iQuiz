//
//  Subject.swift
//  iQuiz
//
//  Created by Teddy Pappas on 10/30/15.
//  Copyright © 2015 Teddy Pappas. All rights reserved.
//

import UIKit

class Subject {
    var name: String
    var image: UIImage?
    var description: String
    var questions: [Dictionary<String, String>]
    
    init(name: String, image: UIImage?, description: String, questions: [Dictionary<String, String>]) {
        self.name = name
        self.image = image
        self.description = description
        self.questions = questions
    }
    
//    if name.isEmpty || description.isEmpty < 0 {
//        return nil
//    }
    
}