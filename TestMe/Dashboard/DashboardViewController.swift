//
//  DashboardViewController.swift
//  TestMe
//
//  Created by Antonio Torres-Ruiz on 5/11/21.
//

import UIKit
import SideMenu
class DashboardViewController: UIViewController {
    var menu : SideMenuNavigationController?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        menu = SideMenuNavigationController(rootViewController: MenuTableViewController())
        menu?.leftSide = true
        menu?.setNavigationBarHidden(true, animated: false)
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: view)
    }

    @IBAction func didTap(_ sender: Any) {
        present(menu!, animated: true)
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
