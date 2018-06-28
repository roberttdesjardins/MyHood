//
//  AddPostVC.swift
//  MyHood
//
//  Created by Robert Desjardins on 2018-06-28.
//  Copyright © 2018 Robert Desjardins. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var descField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addPicBtnPressed(_ sender: UIButton) {
        sender.setTitle("", for: .normal)
    }
    
    @IBAction func makePostBtnPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func cancelBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
