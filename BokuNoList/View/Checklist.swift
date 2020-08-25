//
//  Checklist.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 24/08/20.
//  Copyright © 2020 Vitor Bryan. All rights reserved.
//  swiftlint:disable line_length

import UIKit

class Checklist: UIView {
    
    fileprivate let coverPage: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "cover")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        return image
    }()
    
    fileprivate let checklist: UILabel = {
        let text = UILabel()
        text.text = "Checklist"
        text.textColor = .black
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .left
        text.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        return text
    }()
    
    fileprivate let descript: UILabel = {
        let descript = UILabel()
        descript.textColor = .gray
        descript.text = ""
        descript.numberOfLines = 0
        descript.textAlignment = .left
        descript.adjustsFontSizeToFitWidth = true
        descript.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        descript.translatesAutoresizingMaskIntoConstraints = false
        return descript
    }()
    
    fileprivate let addButton: UIButton = {
        let button = UIButton()
        button.adjustsImageWhenHighlighted = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    fileprivate let ratingTitle: UILabel = {
        let text = UILabel()
        text.text = "Rating"
        text.textColor = .black
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .left
        text.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        return text
    }()
    
    fileprivate let ratingDescript: UILabel = {
        let descript = UILabel()
        descript.textColor = .gray
        descript.text = ""
        descript.numberOfLines = 0
        descript.textAlignment = .left
        descript.adjustsFontSizeToFitWidth = true
        descript.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        descript.translatesAutoresizingMaskIntoConstraints = false
        return descript
    }()
    
    fileprivate let synopsisTitle: UILabel = {
        let text = UILabel()
        text.text = "Synopsis"
        text.textColor = .black
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .left
        text.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        return text
    }()
    
    fileprivate let synopsisDescript: UILabel = {
        let descript = UILabel()
        descript.textColor = .gray
        descript.text = """
        It is the Taisho Period in Japan. Tanjiro, a kindhearted boy who sells charcoal for a living, finds his family slaughtered by a demon. To make matters worse, his younger sister Nezuko, the sole survivor, has been transformed into a demon herself. Though devastated by this grim reality, Tanjiro resolves to become a “demon slayer” so that he can turn his sister back into a human, and kill the demon that massacred his family.
        """
        descript.numberOfLines = 0
        descript.textAlignment = .left
        descript.adjustsFontSizeToFitWidth = true
        descript.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        descript.translatesAutoresizingMaskIntoConstraints = false
        return descript
    }()
    
    fileprivate let detailsTitle: UILabel = {
        let text = UILabel()
        text.text = "Details"
        text.textColor = .black
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .left
        text.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        return text
    }()
    
    fileprivate let detailsDescript: UILabel = {
        let descript = UILabel()
        descript.textColor = .gray
        descript.text = ""
        descript.numberOfLines = 0
        descript.textAlignment = .left
        descript.adjustsFontSizeToFitWidth = true
        descript.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        descript.translatesAutoresizingMaskIntoConstraints = false
        return descript
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension Checklist: ViewCode {
    func buildHierarchy() {
        
        addSubview(checklist)
        addSubview(coverPage)
        addSubview(descript)
        addSubview(addButton)
        addSubview(ratingTitle)
        addSubview(ratingDescript)
        addSubview(synopsisTitle)
        addSubview(synopsisDescript)
        addSubview(detailsTitle)
        addSubview(detailsDescript)
        
    }
    
    func setUpLayoutConstraints() {
        
        NSLayoutConstraint.activate([coverPage.topAnchor.constraint(equalTo: topAnchor),
        coverPage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: -15),
        coverPage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 15),
        coverPage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.28)])
        
        NSLayoutConstraint.activate([checklist.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
        checklist.topAnchor.constraint(equalTo: coverPage.bottomAnchor, constant: 10.5)])
        
        NSLayoutConstraint.activate([addButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
        addButton.topAnchor.constraint(equalTo: checklist.bottomAnchor, constant: 11)])
        
        NSLayoutConstraint.activate([ratingTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
        ratingTitle.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 11)])
        
        NSLayoutConstraint.activate([ratingDescript.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
        ratingDescript.topAnchor.constraint(equalTo: ratingTitle.bottomAnchor, constant: 4)])
        
        NSLayoutConstraint.activate([synopsisTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
        synopsisTitle.topAnchor.constraint(equalTo: ratingDescript.bottomAnchor, constant: 11)])
        
        NSLayoutConstraint.activate([synopsisDescript.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
        synopsisDescript.topAnchor.constraint(equalTo: synopsisTitle.bottomAnchor, constant: 4),
        synopsisDescript.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)])
        
        NSLayoutConstraint.activate([detailsTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
        detailsTitle.topAnchor.constraint(equalTo: synopsisDescript.bottomAnchor, constant: 11)])
        
        NSLayoutConstraint.activate([detailsDescript.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
        detailsDescript.topAnchor.constraint(equalTo: detailsTitle.bottomAnchor, constant: 4)])
    }
    func aditionalConfigurations() {
        backgroundColor = .white
    }
}
