//
//  DetailsViewController.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 22/08/20.
//  Copyright © 2020 Vitor Bryan. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var data: Animes? {
        didSet {
            guard let data = data else {return}
            title = data.title
            descriptionView.title.text = data.title
            descriptionView.detailsDescript.text = data.details
            descriptionView.synopsisDescript.text = data.synopsis
            descriptionView.ratingDescript.text = data.rating
            descriptionView.coverPage.image = data.detailImage
        }
    }
    
    fileprivate let descriptionView: Checklist = {
        let description = Checklist()
        description.translatesAutoresizingMaskIntoConstraints = false
        return description
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
//        title = "Anime Title"
        navigationItem.largeTitleDisplayMode = .never
        self.navigationController?.navigationBar.tintColor = .actionColor
        view.backgroundColor = .white
        
        view.addSubview(topView)
        view.addSubview(botView)
        view.addSubview(descriptionView)
        
        topView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.098).isActive = true
        
        botView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        botView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        botView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        botView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        
        descriptionView.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
        descriptionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        descriptionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        descriptionView.bottomAnchor.constraint(equalTo: botView.topAnchor).isActive = true
        
    }
}
