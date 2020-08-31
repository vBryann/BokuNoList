//
//  MyListViewController.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 14/08/20.
//  Copyright © 2020 Vitor Bryan. All rights reserved.
//

import UIKit

class MyListViewController: UIViewController {
    
    fileprivate let tableview: UITableView = {
        let tableview = UITableView()
        tableview.backgroundColor = .white
        tableview.separatorStyle = .none
        tableview.layer.cornerRadius = 10
        tableview.bounces = false
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    
    fileprivate let topView: UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        return topView
    }()
    
    fileprivate let botView: UIView = {
        let botView = UIView()
        botView.translatesAutoresizingMaskIntoConstraints = false
        return botView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "My List"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        view.addSubview(tableview)
        view.addSubview(topView)
        view.addSubview(botView)
        
        topView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.23).isActive = true
        
        botView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        botView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        botView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        botView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        
        tableview.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 32).isActive = true
        tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        tableview.bottomAnchor.constraint(equalTo: botView.topAnchor).isActive = true
    }
}
