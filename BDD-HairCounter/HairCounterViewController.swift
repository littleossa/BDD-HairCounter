//
//  HairCounterViewController.swift
//  BDD-HairCounter
//
//  Created by Osamu Hiraoka on 2021/08/17.
//

import UIKit

class HairCounterViewController: UIViewController {
    
    @IBOutlet private(set) weak var hairImageView: UIImageView!
    @IBOutlet private(set) weak var ruleDescriptionLabel: UILabel!
    @IBOutlet private(set) weak var hairCountTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hairImageView.image = UIImage(named: "hair0")
        ruleDescriptionLabel.text = "0~10までの数字を入力してください"
        hairCountTextField.text = "0"
        hairCountTextField.keyboardType = .numberPad
    }
}

