//
//  Post.swift
//  MyHood
//
//  Created by Robert Desjardins on 2018-06-27.
//  Copyright © 2018 Robert Desjardins. All rights reserved.
//

import Foundation

class Post {
    fileprivate var _imagePath: String!
    fileprivate var _title: String!
    fileprivate var _postDesc: String!
    
    var imagePath:String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var postDesc: String {
        return _postDesc
    }
    
    init(imagePath: String, title: String, description: String) {
        self._imagePath = imagePath
        self._title = title
        self._postDesc = description
    }
}
