//
//  MomentTableCell.swift
//  Moments
//
//  Created by christophe milliere on 05/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class MomentTableCell: UITableViewCell {

    @IBOutlet weak var imageTable: PictureRounded!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    var photo: Photo!
    
    func setup(photo: Photo) {
        self.photo = photo
        
        imageTable.image = self.photo.image
        nameLabel.text = self.photo.name
        descLabel.text = self.photo.desc
    }
    
}
