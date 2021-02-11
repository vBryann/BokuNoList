//
//  CustomCellViewController.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 17/08/20.
//  Copyright © 2020 Vitor Bryan. All rights reserved.
//

import UIKit

class CustomCellViewController: UICollectionViewCell {
    
    var data: Media? {
        didSet {
            guard let data = data else {return}
            let url = URL(string: data.coverImage?.large ?? "")
            if let data = try? Data(contentsOf: url!) {
                let bannerImage: UIImage = UIImage(data: data)!
                background.image = bannerImage
            }

            title.text = data.title?.userPreferred
        }
    }
    
    fileprivate let background: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "BokuNoHero")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 12
        return image
    }()
    
    fileprivate let title: UILabel = {
       let text = UILabel()
        text.textColor = UIColor.white
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .center
        text.font = UIFont.boldSystemFont(ofSize: 20)
        return text
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(background)
//        contentView.addSubview(title)
        
        background.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        background.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        background.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5).isActive = true
        background.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
