//
//  CellData.swift
//  TableView8-2-19
//
//  Created by Larry Mcdowell on 8/2/19.
//  Copyright © 2019 Larry Mcdowell. All rights reserved.
//

import UIKit

struct CellData {
    var data :[String]
    var title :String
    var image :UIImage
    var footer: String
    var count:Int?
    var taps: Int = 0
    
    init (data: [String], title: String, image:UIImage, footer: String, count: Int?, taps: Int = 0){
        self.data = data
        self.title = title
        self.image = image
        self.footer = footer
        self.count = count
        self.taps = taps
    }
}
