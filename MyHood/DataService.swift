//
//  DataService.swift
//  MyHood
//
//  Created by Robert Desjardins on 2018-07-01.
//  Copyright © 2018 Robert Desjardins. All rights reserved.
//

import Foundation
import UIKit

class DataService {
    
    static let instance = DataService()
    
    private var _loadedPosts = [Post]()
    
    var loadedPosts: [Post] {
        return _loadedPosts
    }
    
    func savePosts() {
        let postsData = NSKeyedArchiver.archivedData(withRootObject: _loadedPosts)
        UserDefaults.standard.set(postsData, forKey: "posts")
        UserDefaults.standard.synchronize()
    }
    
    func loadPosts() {
        if let postsData = UserDefaults.standard.object(forKey: "posts") as? Data {
            if let postsArray = NSKeyedUnarchiver.unarchiveObject(with: postsData) as? [Post] {
                _loadedPosts = postsArray
            }
        }
        NotificationCenter.default.post(Notification(name: Notification.Name(rawValue: "postsLoaded"), object: nil))
    }
    
    func saveImageAndCreatePath(image: UIImage) {
        
    }
    
    func imageForPath(path: String) {
        
    }
    
    func addPost(post: Post) {
        _loadedPosts.append(post)
        savePosts()
        loadPosts()
    }
}
