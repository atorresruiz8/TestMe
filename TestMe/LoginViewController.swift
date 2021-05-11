//
//  LoginViewController.swift
//  TestMe
//
//  Created by Home on 5/10/21.
//
import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate { // TextFieldDelegate is used to declare the function for pushing a key to exit keyboard input
    // Used for the "remember my login" feature
    var ud = UserDefaults.standard
    
    @IBOutlet weak var rememberMe: UILabel!
    @IBOutlet weak var sw: UISwitch!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // these delegates are used in conjunction with textFieldShouldReturn to allow the user to exit touch screen keyboard input by pushing the return key
        username.delegate = self
        password.delegate = self
        
        // if we want to have rounded buttons, make an outlet for each button and change 'loginButton' here to the name of the outlet
//        loginButton.layer.borderWidth = 4
//        loginButton.layer.cornerRadius = 10.0
//        loginButton.layer.cornerCurve = .continuous
        
        if (sw.isOn) { // if the switch is on, remember the last username/password combo entered and automatically enter it for the user
            username.text = ud.string(forKey: "username")
            password.text = ud.string(forKey: "username")
        }
    }
    
    @IBAction func signIn(_ sender: Any) {
        let data = DBHelper.inst.getAccounts()
        for a in data {
            if (username.text == "admin" && password.text == "admin") { // bring up the special admin page if the username/password combo are correct
                // instantiate admin screen
                print("welcome admin")
            }
            
            if (username.text == a.username! && password.text == a.password!) { // Verifies that the user credentials are in the core data and lets the user login
                // instantiate dashboard screen
            }
        }
    }
    
    @IBAction func rememberLogin(_ sender: UISwitch) { // used for userdefaults with regards to remembering the last password/username combo input
        if (sw.isOn) {
            ud.set(sender.isOn, forKey: "mySwitchValue")
            ud.set(username.text, forKey: "username")
            ud.set(password.text, forKey: "password")
        } else {
            ud.removeObject(forKey: "username")
            ud.removeObject(forKey: "password")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) { // used for userdefaults with regards to remembering the last password/username combo input
        sw.isOn = ud.bool(forKey: "mySwitchValue")
        username.text = ud.string(forKey: "username")
        password.text = ud.string(forKey: "password")
    }
 
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { // used to make it so the user can push the return key on the keyboard to exit out of keyboard input
        textField.resignFirstResponder()
        return true
    }
}
