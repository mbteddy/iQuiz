//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Teddy Pappas on 11/12/15.
//  Copyright © 2015 Teddy Pappas. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var questions = [Question]()

    @IBOutlet weak var answer1: UIButton!
    
    @IBOutlet weak var answer2: UIButton!
    
    @IBOutlet weak var answer3: UIButton!
    
    @IBOutlet weak var answer4: UIButton!
    
    var correctAnswer = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        for button in self.view.subviews {
            if button.isKindOfClass(UIButton) {
                let b = button as! UIButton
                b.addTarget(self, action: "moveToAnswer:", forControlEvents: UIControlEvents.TouchUpInside)
                b.hidden = true
            }
        }
    }
    
    func moveToAnswer(sender: UIButton) {
        self.performSegueWithIdentifier("goToAnswer", sender: sender)
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let q = questions[indexPath.row]
        
        self.answer1.hidden = false
        self.answer2.hidden = false
        self.answer3.hidden = false
        self.answer4.hidden = false
        
        self.answer1.titleLabel?.text = q.answers[0]
        self.answer2.titleLabel?.text = q.answers[1]
        self.answer3.titleLabel?.text = q.answers[2]
        self.answer4.titleLabel?.text = q.answers[3]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("subjectTableViewCell") as! SubjectTableViewCell
        let q = self.questions[indexPath.row]
        
        
        cell.subjectLabel.text = q.question
        
        self.correctAnswer.append(q.correctAnswer)
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.questions.count
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let view = segue.destinationViewController as! AnswerViewController
        
        let button = sender as! UIButton
        
        view.selectedAnswer = (button.titleLabel?.text)!
        view.correctAnswer = self.correctAnswer[0]
        
    }

}
