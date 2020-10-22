//
//  ViewCode.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 24/08/20.
//  Copyright © 2020 Vitor Bryan. All rights reserved.
//

import Foundation
import UIKit

protocol ViewCode {
    func buildHierarchy()
    func setUpLayoutConstraints()
    func aditionalConfigurations()
}

extension ViewCode {
    func setUp() {
        buildHierarchy()
        setUpLayoutConstraints()
        aditionalConfigurations()
    }
}

struct MockCell {
    var title: String
    var details: String
    var synopsis: String
    var image: UIImage
}
