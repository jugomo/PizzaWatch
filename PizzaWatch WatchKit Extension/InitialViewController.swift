//
//  InitialViewController.swift
//  PizzaWatch
//
//  Created by Julio on 2/12/15.
//  Copyright © 2015 Julio. All rights reserved.
//

import Foundation
import WatchKit

class InitialViewController: WKInterfaceController {
    
    @IBOutlet var pizzaInProgress: WKInterfaceLabel!
    var pizza: Pizza!
    
    @IBAction func beginButton() {
        pizza = Pizza()
        
        pushControllerWithName("SelectSizeViewController", context: pizza)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if context != nil {
            pizzaInProgress.setHidden(false)
        }
    }
    
}
