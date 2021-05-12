//
//  ChooseQuizzTableViewController.swift
//  TestMe
//
//  Created by Home on 5/11/21.
//

import UIKit

class ChooseQuizzTableViewController: UITableViewController {
    static var totalScore = 0.0
    // name will be based on available quizz name
    //TODO
    
    var name = ["test1", "test2","test3","test4","test5"]
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        //number will be based on number of available quizz
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    @IBAction func start(_ sender: Any) {
        
    }
    
    

}
