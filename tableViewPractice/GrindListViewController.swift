//
//  GrindListViewController.swift
//  tableViewPractice
//
//  Created by Angela Tuzson on 12/23/17.
//  Copyright © 2017 Andrew Tuzson. All rights reserved.
//

import UIKit

class GrindListViewController: UIViewController {
    
    var grinds = [Grind]()

    override func viewDidLoad() {
        super.viewDidLoad()
        grinds = createArray()
        AddNavBarImage()
    }
    
    func AddNavBarImage() {
        let navController = navigationController!
        
        let image = #imageLiteral(resourceName: "logoNav")
        let imageView = UIImageView(image: image)
        
        let bannerWidth = navController.navigationBar.frame.size.width
        let bannerHeight = navController.navigationBar.frame.size.height
        
        let bannerX = bannerWidth / 2 - image.size.width / 2
        let bannerY = bannerHeight / 2 - image.size.height / 2
        
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = imageView
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MasterToDetail" {
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.grind = sender as? Grind
        }
    }

    func createArray() -> [Grind] {
        
        var tempGrinds = [Grind]()
        
        let grind1 = Grind(image: #imageLiteral(resourceName: "aoSoul"), title: "Alley-Oop Soul", grindDetail: "   Achieved   ")
        let grind2 = Grind(image: #imageLiteral(resourceName: "fishbrain"), title: "Fishbrain", grindDetail: "   Needs Work   ")
        let grind3 = Grind(image: #imageLiteral(resourceName: "savannah"), title: "Savannah", grindDetail: "   Achieved   ")
        let grind4 = Grind(image: #imageLiteral(resourceName: "topTowqueSoul"), title: "Topside Torque Soul", grindDetail: "   Needs Work   ")
        let grind5 = Grind(image: #imageLiteral(resourceName: "torque"), title: "Frontside Torque", grindDetail: "   Achieved   ")
        let grind6 = Grind(image: #imageLiteral(resourceName: "xGrind"), title: "X-Grind", grindDetail: "   Achieved   ")
        let grind7 = Grind(image: #imageLiteral(resourceName: "backslide"), title: "Backslide", grindDetail: "   Achieved   ")
        let grind8 = Grind(image: #imageLiteral(resourceName: "bsFarv"), title: "Backside Farv", grindDetail: "   Achieved   ")
        let grind9 = Grind(image: #imageLiteral(resourceName: "negativeMistrail"), title: "Negative Mistrail", grindDetail: "   Achieved   ")
        
        tempGrinds.append(grind1)
        tempGrinds.append(grind2)
        tempGrinds.append(grind3)
        tempGrinds.append(grind4)
        tempGrinds.append(grind5)
        tempGrinds.append(grind6)
        tempGrinds.append(grind7)
        tempGrinds.append(grind8)
        tempGrinds.append(grind9)
        
        return tempGrinds
    }
    
    @IBAction func toggleCheckmarkButton(_ sender: Any) {
        
    }
    
    
}

extension GrindListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return grinds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let grind = grinds[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "GrindCell") as! GrindListCell
        cell.setGrind(grind: grind)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let grind = grinds[indexPath.row]
        performSegue(withIdentifier: "MasterToDetail", sender: grind)
    }
    
    
}







