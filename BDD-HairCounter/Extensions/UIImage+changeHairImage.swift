//
//  UIImage+changeHairImage.swift
//  BDD-HairCounter
//
//  Created by Osamu Hiraoka on 2021/08/18.
//

import UIKit

extension UIImageView {
    
    func changeHairImage(by count: Int?) {
        guard let count = count else {
            self.image = UIImage(named: "error")
            return
        }
        self.image = UIImage(named: "hair\(count)")
    }
}
