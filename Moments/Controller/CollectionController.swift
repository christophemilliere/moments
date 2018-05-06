//
//  CollectionController.swift
//  Moments
//
//  Created by christophe milliere on 05/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class CollectionController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionVIew: UICollectionView!
    
    var photos = [Photo]()
    let cellID = "MomentsCollectionCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photos = BasePhoto.loading.allPhotos()
        collectionVIew.delegate = self
        collectionVIew.dataSource = self
        
        let nib = UINib(nibName: cellID, bundle: nil)
        collectionVIew.register(nib, forCellWithReuseIdentifier: cellID)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionVIew.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as?  MomentsCollectionCell{
            cell.setup(photo: photos[indexPath.item])
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return Ratio.getRatio.size(ItemWidth: collectionView.frame.width / 2 - 30, image: photos[indexPath.item].image)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let photo = photos[indexPath.item]
        let controller = DetailPhotoController()
        controller.photo = photo
        self.present(controller, animated: true, completion: nil)
    }

}
