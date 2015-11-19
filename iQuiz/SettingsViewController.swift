//
//  SettingsViewController.swift
//  iQuiz
//
//  Created by Teddy Pappas on 11/18/15.
//  Copyright © 2015 Teddy Pappas. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var newQuestionURLField: UITextField!
    
    var newQuiz = [AnyObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        newQuestionURLField.text = "http://tednewardsandbox.site44.com/questions.json"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func downloadNewQuestions(sender: AnyObject) {
        
        let newURL = self.newQuestionURLField.text
        
        let sessionConfig = NSURLSessionConfiguration.defaultSessionConfiguration()
        
        /* Create session, and optionally set as an NSURLSessionDelegate */
        let session = NSURLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
        
        let URL = NSURL(string: newURL!)
        
        let request = NSMutableURLRequest(URL: URL!)
        request.HTTPMethod = "GET"
        
        /* Start a new Task */
        
        let task = session.dataTaskWithRequest(request) { (data, response, error) -> Void in
            
            let statusCode = (response as! NSHTTPURLResponse).statusCode
            
            print("URL Session Task Succeeded: HTTP \(statusCode)")
            
            do {
                self.newQuiz = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments) as! [AnyObject]
                
                print("\(self.newQuiz.description)")
            } catch {
                
            }
        }
        
        task.resume()
        
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
