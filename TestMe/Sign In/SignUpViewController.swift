//
//  SignUpViewController.swift
//  TestMe
//
//  Created by Antonio Torres-Ruiz on 5/10/21.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var passField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func createAccount(_ sender: Any) {
        let dic = ["username" : userField.text, "password" : passField.text]
        DBHelper.inst.addUser(object: dic as! [String:String])
        userField.text = "" // reset the text fields to empty so the user can create another new user if they wish
        passField.text = ""
        DBHelper.inst.addCurrUser(object: userField.text!)
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
