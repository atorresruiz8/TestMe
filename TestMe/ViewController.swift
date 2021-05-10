//
//  ViewController.swift
//  TestMe
//
//  Created by Antonio Torres-Ruiz on 5/10/21.
//

import UIKit
import SideMenu
class ViewController: UIViewController {
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

}

