//
//  DetailPhotoController.swift
//  Moments
//
//  Created by christophe milliere on 06/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class DetailPhotoController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imagePhoto: PictureRounded!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    
    @IBOutlet weak var contraintWidth: NSLayoutConstraint!
    @IBOutlet weak var contraintHeigth: NSLayoutConstraint!
    
    var photo: Photo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if navigationController != nil {
            print("coucou")
            backButton.isHidden = true
        }
        
        if photo != nil {
            nameLabel.text = "De: \(photo!.name)"
            descLabel.text = photo!.desc
            imagePhoto.image = photo!.image
            let size = Ratio.getRatio.size(ItemWidth: view.frame.width - 40, image: photo!.image)
            contraintWidth.constant = size.width
            contraintHeigth.constant = size.height
            
        }

    }

    @IBAction func backAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
