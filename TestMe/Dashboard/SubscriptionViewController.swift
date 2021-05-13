//
//  SubscriptionViewController.swift
//  TestMe
//
//  Created by Antonio Torres-Ruiz on 5/13/21.
//

import UIKit

class SubscriptionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func freeAccount(_ sender: UIButton) {
        let cUser = DBHelper.inst.getCurrUser()
        let user = DBHelper.inst.getOneAccount(username: cUser)
        // create the alert
        let alert = UIAlertController(title: "Free Account Selected", message: "Your account now has 'FREE' status. Thank you!", preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        
        // set current user's subscription status as free
        user.subscriptionStatus = "FREE"
    }
    
    
    @IBAction func paidSub(_ sender: Any) {
        let cUser = DBHelper.inst.getCurrUser()
        let user = DBHelper.inst.getOneAccount(username: cUser)
        // create the alert
        let alert = UIAlertController(title: "Paid for Subscription", message: "Thank you for your payment!", preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        
        // set current user's subscription status as paid
        user.subscriptionStatus = "PAID"
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
