//
//  ViewScoresViewController.swift
//  TestMe
//
//  Created by Antonio Torres-Ruiz on 5/11/21.
//

import UIKit

class ViewScoresViewController: UIViewController {

    @IBOutlet weak var lb: UILabel!
    var scores = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func printAllScores(_ sender: Any) {
        let data = DBHelper.inst.getAccounts()
        var i = 1
        for a in data { // prints the scores of each user with their name and scores on the screen
            scores.append("\(i). \(a.username!) :- Score One: \(a.scoreOne); Score Two: \(a.scoreTwo); Score Three: \(a.scoreThree); Score Four: \(a.scoreFour) \n")
            lb.text = scores.joined()
            i += 1
        }
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
