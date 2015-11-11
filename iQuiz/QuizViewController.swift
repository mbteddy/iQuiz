//
//  QuizViewController.swift
//  iQuiz
//
//  Created by Teddy Pappas on 11/6/15.
//  Copyright © 2015 Teddy Pappas. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var answer1: UIButton!
    
    @IBOutlet weak var answer2: UIButton!
    
    @IBOutlet weak var answer3: UIButton!
    
    @IBOutlet weak var answer4: UIButton!
    
    @IBAction func answer1Pressed(sender: AnyObject) {
        
    }
    
    @IBAction func answer2Pressed(sender: AnyObject) {
        
    }
    
    @IBAction func answer3Pressed(sender: AnyObject) {
        
    }
    
    @IBAction func answer4Pressed(sender: AnyObject) {
        
    }
    
    @IBAction func next(sender: AnyObject) {
        
    }
    
    func Question() {
        //var randomNumber = arc4random() % 4
         
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        question.text = "The counter was tapped times."
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
