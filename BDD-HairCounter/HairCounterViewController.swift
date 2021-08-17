//
//  HairCounterViewController.swift
//  BDD-HairCounter
//
//  Created by Osamu Hiraoka on 2021/08/17.
//

import UIKit

class HairCounterViewController: UIViewController {
    
    @IBOutlet private(set) weak var hairImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hairImageView.image = UIImage(named: "hair0")
    }
}

