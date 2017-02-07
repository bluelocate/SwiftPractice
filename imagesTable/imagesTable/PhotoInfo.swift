//
//  PhotoInfo.swift
//  imagesTable
//
//  Created by byung-soo kwon on 2017. 2. 7..
//  Copyright © 2017년 byung-soo kwon. All rights reserved.
//

import Foundation
import RealmSwift


class PhotoInfo: Object{
    
    dynamic var imageData:Data? = nil
    dynamic var title: String? = nil
    dynamic var savedDate: Date = Date()
    
    
}

