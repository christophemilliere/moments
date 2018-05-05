//
//  Photo.swift
//  Moments
//
//  Created by christophe milliere on 05/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import Foundation
import UIKit

class Photo {
    private var _image: UIImage
    private var _name: String
    private var _desc: String
    
    var image: UIImage {
        return _image
    }
    
    var name: String {
        return _name
    }
    
    var desc: String {
        return _desc
    }
    
    init(image: UIImage, name: String, desc: String) {
        self._image = image
        self._name = name
        self._desc = desc
    }
    
}
