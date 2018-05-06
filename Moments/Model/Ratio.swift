//
//  Ratio.swift
//  Moments
//
//  Created by christophe milliere on 06/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import Foundation
import UIKit

class Ratio {
    static let getRatio = Ratio()
    func size(ItemWidth: CGFloat, image: UIImage) -> CGSize {
    
        let ration = ItemWidth / image.size.width
        let width = image.size.width * ration
        let height = image.size.height * ration
        
        return CGSize(width: width, height: height)
        
    }
}
