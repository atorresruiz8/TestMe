//
//  FeedbackViewController.swift
//  TestMe
//
//  Created by Antonio Torres-Ruiz on 5/13/21.
//

import UIKit

class FeedbackViewController: UIViewController {

    @IBOutlet weak var feedback: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitFeedback(_ sender: Any) {
        let cUser = DBHelper.inst.getCurrUser()
        let user = DBHelper.inst.getOneAccount(username: cUser)
        // create the alert
        let alert = UIAlertController(title: "Feedback Received", message: "Thank you for submitting. We are grateful for your comments.", preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        
        // get current user and set its feedback attribute to this input
        user.feedback = feedback.text
        
        feedback.text = "" // clear it so they can input more again
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
