//
//  SelectAdmisturesViewController.swift
//  PizzaWatch
//
//  Created by Julio on 2/12/15.
//  Copyright © 2015 Julio. All rights reserved.
//

import Foundation
import WatchKit

class SelectAdmisturesViewController: WKInterfaceController {

    var pizza: Pizza!
    
    
    @IBAction func jamonSelected(value: Bool) {
        if value {
            pizza.ingredientes[0] = Pizza.Ingredientes.jamon
        } else {
            pizza.ingredientes[0] = nil
        }
    }
    
    @IBAction func peperoniSelected(value: Bool) {
        if value {
            pizza.ingredientes[1] = Pizza.Ingredientes.peperoni
        } else {
            pizza.ingredientes[1] = nil
        }
    }
    
    @IBAction func pavoSelected(value: Bool) {
        if value {
            pizza.ingredientes[2] = Pizza.Ingredientes.pavo
        } else {
            pizza.ingredientes[2] = nil
        }
    }
    
    @IBAction func salchichaSelected(value: Bool) {
        if value {
            pizza.ingredientes[3] = Pizza.Ingredientes.salchicha
        } else {
            pizza.ingredientes[3] = nil
        }
    }
    
    @IBAction func aceitunaSelected(value: Bool) {
        if value {
            pizza.ingredientes[4] = Pizza.Ingredientes.aceituna
        } else {
            pizza.ingredientes[4] = nil
        }
    }
    
    @IBAction func cebollaSelected(value: Bool) {
        if value {
            pizza.ingredientes[5] = Pizza.Ingredientes.cebolla
        } else {
            pizza.ingredientes[5] = nil
        }
    }
    
    @IBAction func pimientoSelected(value: Bool) {
        if value {
            pizza.ingredientes[6] = Pizza.Ingredientes.pimiento
        } else {
            pizza.ingredientes[6] = nil
        }
    }
    
    @IBAction func piñaSelected(value: Bool) {
        if value {
            pizza.ingredientes[7] = Pizza.Ingredientes.piña
        } else {
            pizza.ingredientes[7] = nil
        }
    }
    
    @IBAction func anchoaSelected(value: Bool) {
        if value {
            pizza.ingredientes[8] = Pizza.Ingredientes.anchoa
        } else {
            pizza.ingredientes[8] = nil
        }
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if context != nil {
            pizza = context as! Pizza
        }
    }
    
    @IBAction func siguiente() {
        pushControllerWithName("FinalViewController", context: pizza)
    }
    
}
