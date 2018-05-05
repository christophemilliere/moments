//
//  BasePhoto.swift
//  Moments
//
//  Created by christophe milliere on 05/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import Foundation
import UIKit

class BasePhoto {
    static let loading = BasePhoto()
    
    func allPhotos() -> [Photo] {
        var photos = [Photo]()
        
        photos.append(Photo(image: #imageLiteral(resourceName: "aurore boréale"), name: "Gérard", desc: "Aurore Boréale"))
        photos.append(Photo(image: #imageLiteral(resourceName: "coucher de soleil"), name: "Stéphanie", desc: "Coucher de soleil"))
        photos.append(Photo(image: #imageLiteral(resourceName: "dans ma rue"), name: "Bruno", desc: "Dans ma rue"))
        photos.append(Photo(image: #imageLiteral(resourceName: "mes apps"), name: "Laure", desc: "Mes applications faites sur Codabee.com"))
        photos.append(Photo(image: #imageLiteral(resourceName: "mon bureau"), name: "Yannis", desc: "Mon bureau"))
        photos.append(Photo(image: #imageLiteral(resourceName: "paris"), name: "Sébastien", desc: "Paris sera toujours Paris"))
        photos.append(Photo(image: #imageLiteral(resourceName: "steve scrabble"), name: "Timothée", desc: "Steve J. était il bon au scrabble?"))
        photos.append(Photo(image: #imageLiteral(resourceName: "suis moi"), name: "Jean-Jacques", desc: "Je te suivrai n'importe où"))
        photos.append(Photo(image: #imageLiteral(resourceName: "un ananas à la mer"), name: "Patrick", desc: "La maison de bob l'éponge s'est échouée"))
        
        return photos
    }
}
