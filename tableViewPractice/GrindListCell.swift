//
//  GrindListCell.swift
//  tableViewPractice
//
//  Created by Angela Tuzson on 12/23/17.
//  Copyright © 2017 Andrew Tuzson. All rights reserved.
//

import UIKit
import QuartzCore

class GrindListCell: UITableViewCell {

    @IBOutlet weak var grindImageView: UIImageView!
    @IBOutlet weak var grindLabel: UILabel!
    @IBOutlet weak var grindDetail: UILabel!
    
    let customGreen = UIColor(rgb: 0x7DCC87)
    let customRed = UIColor(rgb: 0xDC635F)
    
    func setGrind(grind: Grind) {
        grindImageView.image = grind.image
        grindLabel.text = grind.title
        grindDetail.text = grind.grindDetail
        configureDetail()
    }
    
    func configureDetail() {
        if grindDetail.text == "   Achieved   " {
            grindDetail.backgroundColor = customGreen
            grindDetail.textColor = UIColor.white
            grindDetail.layer.masksToBounds = true
            grindDetail.layer.cornerRadius = 12
        } else if grindDetail.text == "   Needs Work   " {
            grindDetail.backgroundColor = customRed
            grindDetail.textColor = UIColor.white
            grindDetail.layer.masksToBounds = true
            grindDetail.layer.cornerRadius = 12
        }
    }
    
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
