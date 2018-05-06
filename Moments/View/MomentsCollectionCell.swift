//
//  MomentsCollectionCell.swift
//  Moments
//
//  Created by christophe milliere on 06/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class MomentsCollectionCell: UICollectionViewCell {
    
    var photo: Photo!

    @IBOutlet weak var imageviewCell: PictureRounded!

    func setup(photo: Photo) {
        self.photo = photo
        
        imageviewCell.image = self.photo.image
    }
}
