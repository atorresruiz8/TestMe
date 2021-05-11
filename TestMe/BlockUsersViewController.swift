//
//  BlockUsersViewController.swift
//  TestMe
//
//  Created by Antonio Torres-Ruiz on 5/10/21.
//

import UIKit

class BlockUsersViewController: UIViewController {

    @IBOutlet weak var blockUsers: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func confirmBlockUser(_ sender: Any) {
        let user = DBHelper.inst.getOneAccount(username: blockUsers.text!)
        user.blockedStatus = true
        print("User is blocked.")
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
