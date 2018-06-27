//
//  Post.swift
//  MyHood
//
//  Created by Robert Desjardins on 2018-06-27.
//  Copyright © 2018 Robert Desjardins. All rights reserved.
//

import Foundation

class Post {
    fileprivate var imagePath: String
    fileprivate var title: String
    fileprivate var postDesc: String
    
    init(imagePath: String, title: String, description: String) {
        self.imagePath = imagePath
        self.title = title
        self.postDesc = description
    }
}
