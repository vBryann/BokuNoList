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

        let firstVC = ExplorerViewController()
        let secondVC = MyListViewController()
        
        let tabList = [firstVC,secondVC]
        viewControllers = tabList
    }
}
