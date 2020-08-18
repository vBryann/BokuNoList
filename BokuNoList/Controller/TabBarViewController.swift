//
//  TabBarViewController.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 14/08/20.
//  Copyright © 2020 Vitor Bryan. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstVC = UINavigationController(rootViewController: ExplorerViewController())
        firstVC.tabBarItem = UITabBarItem(title: "Explore", image: UIImage(named: "Explore"), tag: 0)
        
        let secondVC = UINavigationController(rootViewController: MyListViewController())
        secondVC.tabBarItem = UITabBarItem(title: "My List", image: UIImage(named: "list"), tag: 1)
        
        let tabList = [firstVC,secondVC]
        viewControllers = tabList
        setupColor()
    }
    func setupColor() {
        tabBar.tintColor = .actionColor
        tabBar.backgroundColor = .white
    }
}
