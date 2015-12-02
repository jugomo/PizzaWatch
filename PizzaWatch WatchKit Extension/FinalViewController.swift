//
//  FinalViewController.swift
//  PizzaWatch
//
//  Created by Julio on 2/12/15.
//  Copyright © 2015 Julio. All rights reserved.
//

import Foundation
import WatchKit

class FinalViewController: WKInterfaceController {

    var pizza: Pizza!
    
    
    @IBAction func confirmar() {
        pushControllerWithName("InitialViewController", context: pizza)
    }
    
    @IBAction func modificar() {
        pushControllerWithName("SelectSizeViewController", context: pizza)
    }
}
