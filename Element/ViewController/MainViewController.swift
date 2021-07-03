//
//  MainViewController.swift
//  Element
//
//  Created by Adolfo Lozada Serena on 02/07/21.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeViewController = HomeViewController()
        let homeNavigationController = UINavigationController(rootViewController: homeViewController)
        homeNavigationController.tabBarItem.image = UIImage(named: "homeIcon")
        homeNavigationController.navigationBar.isHidden = true

        let loginViewController = LoginViewController()
        let loginNavigationController = UINavigationController(rootViewController: loginViewController)
        loginNavigationController.tabBarItem.image = UIImage(named: "loginIcon")
        loginNavigationController.navigationBar.isHidden = true
        
        tabBar.barTintColor = .white
        tabBar.isTranslucent = false
        tabBar.tintColor = .black
        tabBar.unselectedItemTintColor = .gray
        navigationController?.navigationBar.isHidden = true
        viewControllers = [homeNavigationController, loginNavigationController]
    }

}
