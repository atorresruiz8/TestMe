//
//  LoginViewController.swift
//  TestMe
//
//  Created by Home on 5/10/21.
//
import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var rememberMe: UILabel!
    @IBOutlet weak var sw: UISwitch!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signIn(_ sender: Any) {
        let data = DBHelper.inst.getAccounts()
        for a in data {
            if (username.text == a.username! && password.text == a.password!) { // Verifies that the user credentials are in the core data and lets the user login
                print("logged in")
            }
        }
    }
    
}
