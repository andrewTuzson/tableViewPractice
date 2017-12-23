//
//  DetailViewController.swift
//  tableViewPractice
//
//  Created by Angela Tuzson on 12/23/17.
//  Copyright © 2017 Andrew Tuzson. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailGrindLabel: UILabel!
    @IBOutlet weak var detailGrindDetail: UILabel!
    
    var grind: Grind?
    let customGreen = UIColor(rgb: 0x7DCC87)
    let customRed = UIColor(rgb: 0xDC635F)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        if detailGrindDetail.text == "   Achieved   " {
            detailGrindDetail.backgroundColor = customGreen
            detailGrindDetail.textColor = UIColor.white
            detailGrindDetail.layer.masksToBounds = true
            detailGrindDetail.layer.cornerRadius = 12
        } else {
            detailGrindDetail.backgroundColor = customRed
            detailGrindDetail.textColor = UIColor.white
            detailGrindDetail.layer.masksToBounds = true
            detailGrindDetail.layer.cornerRadius = 12
        }
    }
    
    func setUI() {
        detailImageView.image = grind?.image
        detailGrindLabel.text = grind?.title
        detailGrindDetail.text = grind?.grindDetail
    }

}
