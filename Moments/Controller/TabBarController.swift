//
//  TabBarController.swift
//  Moments
//
//  Created by christophe milliere on 05/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let collection = CollectionController()
        collection.title = "Collection view"
        collection.tabBarItem.image = #imageLiteral(resourceName: "collectionView")
        
        let table = TableController()
        table.title = " TableView"
        table.tabBarItem.image = #imageLiteral(resourceName: "tableView")
        viewControllers = [collection, table]
    }

}
