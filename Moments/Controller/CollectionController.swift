//
//  CollectionController.swift
//  Moments
//
//  Created by christophe milliere on 05/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class CollectionController: UIViewController {

    @IBOutlet weak var collectionVIew: UICollectionView!
    
    var photos = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photos = BasePhoto.loading.allPhotos()
        // Do any additional setup after loading the view.
    }

}
