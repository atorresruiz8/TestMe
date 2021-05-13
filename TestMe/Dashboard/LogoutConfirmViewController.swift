//
//  LogoutConfirmViewController.swift
//  TestMe
//
//  Created by Antonio Torres-Ruiz on 5/13/21.
//

import UIKit

class LogoutConfirmViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logOutConfirmed(_ sender: Any) {
        let login = self.storyboard?.instantiateViewController(identifier: "login") as! LoginViewController
        login.modalPresentationStyle = .fullScreen
        self.present(login, animated: true, completion: nil)
    }
    
    @IBAction func goBackToDashboard(_ sender: Any) {
        let db = self.storyboard?.instantiateViewController(identifier: "db") as! DashboardNavigationViewController
        db.modalPresentationStyle = .fullScreen
        self.present(db, animated: true, completion: nil)
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
