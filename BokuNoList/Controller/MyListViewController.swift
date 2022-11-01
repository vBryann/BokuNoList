//
//  MyListViewController.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 14/08/20.
//  Copyright © 2020 Vitor Bryan. All rights reserved.
//

import UIKit

class MyListViewController: UIViewController {
    
    var animes: [Anime] = []
    
    fileprivate let tableview: UITableView = {
        let tableview = UITableView()
        tableview.backgroundColor = .white
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        reloadAnimeData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "My List"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableview.tableFooterView = UIView()
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
    
        tableview.dataSource = self
        tableview.delegate = self
            }
    func reloadAnimeData() {
        do {
            if let animes = try DatabaseController.persistentContainer.viewContext.fetch(Anime.fetchRequest()) as? [Anime] {
                self.animes = animes
            }
        } catch {
            print("O banco não conseguiu realizar a busca")
        }
        tableview.reloadData()
    }
}
extension MyListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let anime = animes[indexPath.row]
        
        cell.textLabel?.text = anime.title
        cell.detailTextLabel?.text = anime.details
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let delete = UIContextualAction(style: .destructive,
                                        title: "Delete") {(action, view, completionHandler) in
            let animeToBeDeleted = self.animes[indexPath.row]
            self.animes.remove(at: indexPath.row)
            self.tableview.deleteRows(at: [indexPath], with: .fade)
            DatabaseController.persistentContainer.viewContext.delete(animeToBeDeleted)
            DatabaseController.saveContext()
            
            completionHandler(true)
        }
        
        let swipe = UISwipeActionsConfiguration(actions: [delete])
        return swipe
    }
    
}
