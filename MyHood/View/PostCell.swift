//
//  PostCell.swift
//  MyHood
//
//  Created by Robert Desjardins on 2018-06-27.
//  Copyright © 2018 Robert Desjardins. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        postImg.layer.cornerRadius = 15
    }
    
    func configureCell(_ post: Post) {
        titleLbl.text = post.title
        descLbl.text = post.postDesc
    }

}
