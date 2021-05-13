//
//  ProfileViewController.swift
//  TestMe
//
//  Created by Justin Horner on 5/12/21.
//

import UIKit

class ProfileViewController: UIViewController {
    var cUser = DBHelper.inst.getCurrUser()
    @IBOutlet weak var username: UILabel!
    override func viewDidLoad() {
        username.text = cUser
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
