//
//  MyHeaderFooterClass.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 19/08/20.
//  Copyright © 2020 Vitor Bryan. All rights reserved.
//

import UIKit

class MyHeaderFooterClass: UICollectionReusableView {
    override init(frame: CGRect) {
       super.init(frame: frame)
       self.backgroundColor = UIColor.purple

    }

    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)

    }
}
