//
//  DrinkViewController.swift
//  barbot
//
//  Created by Naveen Yadav on 3/26/16.
//  Copyright © 2016 BarBot. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class DrinkViewController : UIViewController {
    
    @IBOutlet weak var titleLabel: UINavigationItem!
    @IBOutlet weak var imageView: UIImageView!
    var drink : Drink!
    var managedObjectContext : NSManagedObjectContext!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    
    func configureView() {
        self.titleLabel.title = self.drink.name
    }
    
    @IBAction func orderDrink(sender: AnyObject) {
        // Send order to barbot web server
    }
}