//
//  SubjectTableViewController.swift
//  iQuiz
//
//  Created by Teddy Pappas on 10/30/15.
//  Copyright © 2015 Teddy Pappas. All rights reserved.
//

import UIKit

struct Question {
    var question : String
    var answers : [String]
    var correctAnswer: String
}

class SubjectTableViewController: UITableViewController {
    
    let subjectNames = ["Marvel", "Math", "Science"]
    let subjectDescription = ["about superheros","math stuffs","Science RULES -Bill Nye"]
    let subjectImages = [UIImage(named: "Marvel"), UIImage(named: "Math"), UIImage(named: "Science")]
    
    // MARK: Properties
    let marvelQuestions = [Question(question: "Who is a Marvel superhero?", answers: ["batman", "superman", "spiderman", "ironman"], correctAnswer: "ironman"), Question(question: "Who is not a Marvel superhero?",  answers: ["batman", "superman", "spiderman", "ironman"], correctAnswer: "batman")]
    
    let mathQuestions = [Question(question: "What is 1+1", answers: ["3", "6", "2", "16"], correctAnswer: "2"), Question(question: "What is 3*1", answers: ["3", "6", "2", "16"], correctAnswer: "3")]
    
    let scienceQuestions = [Question(question: "What is 4+1", answers: ["3", "6", "5", "16"], correctAnswer: "5"), Question(question: "What is 3*2", answers: ["3", "6", "2", "16"], correctAnswer: "6")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.topItem!.title = "Pick a quiz!"
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.subjectNames.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "SubjectTableViewCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! SubjectTableViewCell
        
        cell.subjectLabel.text = self.subjectNames[indexPath.row]
        cell.subjectImage.image = self.subjectImages[indexPath.row]
        cell.subjectDescription.text = self.subjectDescription[indexPath.row]

        return cell
    }
    
    @IBAction func exit(segue: UIStoryboardSegue) {
        print("moved back to")
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "settingsPopover" {
            
        } else {
            
            let cell = sender as! SubjectTableViewCell?
        
            let questionController = segue.destinationViewController as! QuestionViewController
        
            switch cell?.subjectLabel.text! {
                case "Marvel"? :
                    questionController.questions = self.marvelQuestions
                    questionController.navigationItem.title = "Marvel Quiz"
                case "Math"? :
                    questionController.questions = self.mathQuestions
                    questionController.navigationItem.title = "Math Quiz"
                case "Science"? :
                    questionController.questions = self.scienceQuestions
                    questionController.navigationItem.title = "Science Quiz"
                default :
                    break
            }
        }
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
