//
//  BaseTabBarController.swift
//  AppStoreJSONApis
//
//  Created by Brian Voong on 2/8/19.
//  Copyright © 2019 Brian Voong. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    // 3 - maybe introduce our AppsSearchController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            createNavController(viewController: AppsPageController(), title: "Apps", imageName: "apps"),
            createNavController(viewController: AppsSearchController(), title: "Search", imageName: "search"),
            createNavController(viewController: UIViewController(), title: "Today", imageName: "today_icon"),
        ]
    }
    
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
        
    }
    
}
