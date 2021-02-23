//
//  DetailsViewController.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 22/08/20.
//  Copyright © 2020 Vitor Bryan. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var data: Media? {
        didSet {
            guard var data = data else {return}
            title = data.title?.userPreferred
            descriptionView.title.text = data.title?.userPreferred
//            descriptionView.detailsDescript.text = data.details
            
            let html = "<br>"
            let html2 = "</i>"
            let html3 = "<i>"
            let html4 = "<i/>"
            
            while let description = data.description?.range(of: html) {
                data.description?.removeSubrange(description)
                descriptionView.synopsisDescript.text = data.description
            }
            while let description = data.description?.range(of: html2) {
                data.description?.removeSubrange(description)
            }
            while let description = data.description?.range(of: html3) {
                data.description?.removeSubrange(description)
            }
            while let description = data.description?.range(of: html4) {
                data.description?.removeSubrange(description)
            }
            
            descriptionView.synopsisDescript.text = data.description
            descriptionView.ratingDescript.text = "\(data.averageScore ?? 0)%"
            
            guard let url = URL(string: data.bannerImage ?? "") else { return descriptionView.coverPage.image = #imageLiteral(resourceName: "Image") }
            if let data = try? Data(contentsOf: url) {
                let bannerImage: UIImage = UIImage(data: data)!
                descriptionView.coverPage.image = bannerImage
            }
            
            if data.nextAiringEpisode?.timeUntilAiring != nil {
                descriptionView.airing.text = "\(data.nextAiringEpisode!.timeUntilAiring/86400) Days "
                descriptionView.icon.image = #imageLiteral(resourceName: "time")
            }
        }
    }
    
    fileprivate let descriptionView: Checklist = {
        let description = Checklist()
        description.translatesAutoresizingMaskIntoConstraints = false
        return description
    }()
    
    fileprivate let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.autoresizingMask = .flexibleHeight
        scroll.bounces = true
        return scroll
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
    
    @objc func notifications() {
        print("deu bom")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        title = "Anime Title"
        navigationItem.largeTitleDisplayMode = .never
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "notification"),
                                                            style: .plain,
                                                            target: self,
                                                            action: #selector(notifications))
        self.navigationController?.navigationBar.tintColor = .actionColor
        view.backgroundColor = .white
        
//        view.addSubview(topView)
//        view.addSubview(botView)
        view.addSubview(scrollView)
        
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        scrollView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        scrollView.addSubview(descriptionView)
        scrollView.addSubview(topView)
        scrollView.addSubview(botView)
        
        topView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        topView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.098).isActive = true
        
        botView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        botView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        botView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        botView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        
        descriptionView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        descriptionView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        descriptionView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        descriptionView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        descriptionView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        descriptionView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 0.9).isActive = true
        
    }
}
