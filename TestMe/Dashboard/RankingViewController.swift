//
//  RankingViewController.swift
//  TestMe
//
//  Created by Antonio Torres-Ruiz on 5/13/21.
//

import UIKit

class RankingViewController: UIViewController {

    // Arrays used to store all of the rankings
    var rankingOne = [Double]()
    var rankingTwo = [Double]()
    var rankingThree = [Double]()
    var rankingFour = [Double]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        calculateRankings()
    }
    
    func calculateRankings() {
        let data = DBHelper.inst.getAccounts()
        for a in data {
            // compile all of the users' scores
            rankingOne.append(a.scoreOne)
            rankingTwo.append(a.scoreTwo)
            rankingThree.append(a.scoreThree)
            rankingFour.append(a.scoreFour)
            
            // sort in ascending order
            rankingOne.sort(by: <)
            rankingTwo.sort(by: <)
            rankingThree.sort(by: <)
            rankingFour.sort(by: <)
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
