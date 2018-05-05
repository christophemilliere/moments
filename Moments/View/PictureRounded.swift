//
//  PictureRounded.swift
//  Moments
//
//  Created by christophe milliere on 05/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class PictureRounded: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup(){
        contentMode = .scaleAspectFill
        clipsToBounds = true
        layer.cornerRadius = 20
    }

}
