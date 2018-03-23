//
//  DataItem.swift
//  TableViewDemo
//
//  Created by Saleh Almozaai on 23/03/2018.
//  Copyright © 2018 Saleh Saeed. All rights reserved.
//

import UIKit

class DataItem {
    var tiltle: String
    var subtitle: String
    var image: UIImage?
    
    init(title: String, subtitle: String, imageName: String?) {
        self.tiltle = title
        self.subtitle = subtitle
        if let imageName = imageName{
            if let img = UIImage(named: imageName) {
                image = img
            }
        }
    }
    
}














































