//
//  ProfileViewController.swift
//  TestMe
//
//  Created by Justin Horner on 5/12/21.
//

import UIKit

class ProfileViewController: UIViewController {
    let cUser = DBHelper.inst.getCurrUser()
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var rank: UILabel!
    @IBOutlet weak var userIcon: UIImageView!
    var rankingOne = [Account]()
    override func viewDidLoad() {
        username.text = "Welcome, \(cUser)!"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func calcAverage (user :Account) -> Double{
        var average = (user.scoreOne + user.scoreTwo + user.scoreThree + user.scoreFour)/user.quizzesTaken
        if (average.isNaN){
            average = 0
        }
        return average
    }
    
    func calculateRankings() {
        let data = DBHelper.inst.getAccounts()
        DBHelper.inst.addTestUser(object: ["test1":"test1"], scores: 1)
        DBHelper.inst.addTestUser(object: ["test2":"test2"], scores: 2)
        DBHelper.inst.addTestUser(object: ["test3":"test3"], scores: 3)
        DBHelper.inst.addTestUser(object: ["test4":"test4"], scores: 4)
        for a in data {
            // compile all of the users' scores
            rankingOne.append(a)
            // sort by average score
            rankingOne.sort(by : ({calcAverage(user: $0) > calcAverage(user: $1)}))
            print(rankingOne)

            // sort in ascending order
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let user = DBHelper.inst.getOneAccount(username: cUser)
        let a = calcAverage(user: user)
        user.scoreOne = a
        score.text = "Average Score: " + String(a)
        calculateRankings()
        rank.text = "Rank: " + String(Int(rankingOne[0].scoreOne + rankingOne[0].scoreTwo + rankingOne[0].scoreThree + rankingOne[0].scoreFour/rankingOne[0].quizzesTaken))
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
