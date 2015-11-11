//
//  SubjectTableViewController.swift
//  iQuiz
//
//  Created by Teddy Pappas on 10/30/15.
//  Copyright © 2015 Teddy Pappas. All rights reserved.
//

import UIKit

class SubjectTableViewController: UITableViewController {
    
    // MARK: Properties
    
    var subjects = [Subject]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the sample data.
        loadSampleMeals()
    }
    
    func loadSampleMeals() {
        let marvelPic = UIImage(named: "Marvel")!
        let marvelQuestion1 = ["question": "Who is a Marvel superhero?", "answer1": "batman", "answer2": "superman", "answer3": "spiderman", "answer4": "ironman", "correctAnswer": "4"]
        let marvelQuestion2 = ["question": "Who is not a Marvel superhero?", "answer1": "batman", "answer2": "superman", "answer3": "spiderman", "answer4": "ironman", "correctAnswer": "1"]

        let marvelQuestions = [marvelQuestion1, marvelQuestion2]
        let marvel = Subject(name: "Marvel", image: marvelPic, description: "sadafd", questions: marvelQuestions)
        
        let mathPic = UIImage(named: "Math")!
        let mathQuestion1 = ["question": "What is 1+1", "answer1": "3", "answer2": "6", "answer3": "2", "answer4": "16", "correctAnswer": "3"]
        let mathQuestion2 = ["question": "What is 3*1", "answer1": "3", "answer2": "6", "answer3": "2", "answer4": "16", "correctAnswer": "3"]
        let mathQuestions = [mathQuestion1, mathQuestion2]
        let math = Subject(name: "Math", image: mathPic, description: "questions about math", questions: mathQuestions)
        
        let sciencePic = UIImage(named: "Science")!
        let scienceQuestion1 = ["question": "What is 1+1", "answer1": "3", "answer2": "6", "answer3": "2", "answer4": "16", "correctAnswer": "3"]
        let scienceQuestion2 = ["question": "What is 3*1", "answer1": "3", "answer2": "6", "answer3": "2", "answer4": "16", "correctAnswer": "3"]
        let scienceQuestions = [scienceQuestion1, scienceQuestion2]
        let science = Subject(name: "Science", image: sciencePic, description: "dsafdafsdfas", questions: scienceQuestions)
        
        subjects += [marvel, math, science]
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
        
        return subjects.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "SubjectTableViewCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! SubjectTableViewCell
        
        let subject = subjects[indexPath.row]

        cell.subjectLabel.text = subject.name
        cell.subjectImage.image = subject.image
        cell.subjectDescription.text = subject.description

        return cell
    }
    
    @IBAction func settings(sender: AnyObject) {
        let alertController = UIAlertController(title: "Settings", message: "Settings go here", preferredStyle: .Alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(defaultAction)
        
        presentViewController(alertController, animated: true, completion: nil)
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
        
        if segue.identifier == "showQuiz" {
            var SecondViewController : QuizViewController = segue.destinationViewController as! QuizViewController
        }

        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
