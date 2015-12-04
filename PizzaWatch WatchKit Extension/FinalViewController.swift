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

    @IBOutlet var receta: WKInterfaceLabel!
    var pizza: Pizza!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        var miPizza = ""
        
        if context != nil {
            pizza = context as! Pizza
            
            let ingr1: String = (pizza.ingredientes[0] != nil ? pizza.ingredientes[0]! + ", " : "")
            let ingr2: String = (pizza.ingredientes[1] != nil ? pizza.ingredientes[1]! + ", " : "")
            let ingr3: String = (pizza.ingredientes[2] != nil ? pizza.ingredientes[2]! + ", " : "")
            let ingr4: String = (pizza.ingredientes[3] != nil ? pizza.ingredientes[3]! + ", " : "")
            let ingr5: String = (pizza.ingredientes[4] != nil ? pizza.ingredientes[4]! + ", " : "")
            let ingr6: String = (pizza.ingredientes[5] != nil ? pizza.ingredientes[5]! + ", " : "")
            let ingr7: String = (pizza.ingredientes[6] != nil ? pizza.ingredientes[6]! + ", " : "")
            let ingr8: String = (pizza.ingredientes[7] != nil ? pizza.ingredientes[7]! + ", " : "")
            let ingr9: String = (pizza.ingredientes[8] != nil ? pizza.ingredientes[8]! : "")
            
            miPizza = "Tamaño: " + pizza.tamaño!.rawValue + "\n\n"
            miPizza = miPizza + "Masa: " + pizza.masa!.rawValue + "\n\n"
            miPizza = miPizza + "Queso: " + pizza.queso!.rawValue + "\n\n"
            miPizza = miPizza + "Ingrdientes: " + ingr1 + ingr2 + ingr3 + ingr4 + ingr5 + ingr6 + ingr7 + ingr8 + ingr9
            
            receta.setText(miPizza)
        }
    }
    
    @IBAction func confirmar() {
        pushControllerWithName("InitialViewController", context: pizza)
    }
    
    @IBAction func modificar() {
        pushControllerWithName("SelectSizeViewController", context: pizza)
    }
    
}
