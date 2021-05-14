//
//  DashboardViewController.swift
//  TestMe
//
//  Created by Antonio Torres-Ruiz on 5/11/21.
//

import UIKit
import SideMenu
class DashboardViewController: UIViewController {
    
    @IBOutlet weak var welcomeTitle: UILabel!
    @IBOutlet var background: UIView!
    var menu : SideMenuNavigationController?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        menu = SideMenuNavigationController(rootViewController: MenuTableViewController())
        menu?.leftSide = true
        menu?.setNavigationBarHidden(true, animated: false)
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: view)
        
        // Create a gradient layer
        let gradientLayer = CAGradientLayer()
        
        // Set the size of the layer to be equal to the size of the display
        gradientLayer.frame = view.bounds
        
        // Set an array of CGColors to create the gradient
        gradientLayer.colors = [#colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1).cgColor, UIColor(red: 50/255, green: 180/255, blue: 150/255, alpha: 1).cgColor]
        
        // Rasterize this layer to improve perfromance
        gradientLayer.shouldRasterize = true
        
        // Apply the gradient to the background
        background.layer.insertSublayer(gradientLayer, at: 0)
    }

    @IBAction func didTap(_ sender: Any) {
        present(menu!, animated: true)
    }
    override func viewDidAppear(_ animated: Bool) {
        let cUser = DBHelper.inst.getCurrUser()
        let user = DBHelper.inst.getOneAccount(username: cUser)
        welcomeTitle.text = "Welcome, \(user.username!)!"
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
