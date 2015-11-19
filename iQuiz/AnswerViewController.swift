//
//  AnswerViewController.swift
//  iQuiz
//
//  Created by Teddy Pappas on 11/17/15.
//  Copyright © 2015 Teddy Pappas. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    var correctAnswer = String()
    var selectedAnswer = String()
    
    @IBOutlet weak var correctLabel: UILabel!
    
    @IBOutlet weak var yourAnswer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if selectedAnswer == correctAnswer {
            self.correctLabel.text = "Correct!"
            self.yourAnswer.text = "You chose \(selectedAnswer) which was right!"
            let nav = self.navigationController as! NavViewController
            nav.totalCorrectAnswers++
        } else {
            self.correctLabel.text = "Wrong!"
            self.yourAnswer.text = "You chose \(selectedAnswer) but the answer was \(correctAnswer)"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
