//
//  SelectSizeViewController.swift
//  PizzaWatch
//
//  Created by Julio on 2/12/15.
//  Copyright © 2015 Julio. All rights reserved.
//

import Foundation
import WatchKit

class SelectSizeViewController: WKInterfaceController {
    
    @IBOutlet var sizeSelected: WKInterfaceLabel!
    @IBOutlet var sizeSelector: WKInterfaceSlider!
    var pizza: Pizza!
    
    
    @IBAction func selectionSize(value: Float) {
        switch value {
        case 1:
            pizza.tamaño = Pizza.Tam.Chica
        case 2:
            pizza.tamaño = Pizza.Tam.Mediana
        case 3:
            pizza.tamaño = Pizza.Tam.Grande
        default:
            break
        }
        sizeSelected.setText(pizza.tamaño?.rawValue)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if context != nil {
            pizza = context as! Pizza
            if pizza.tamaño != nil {
                sizeSelector.setValue(Float(pizza.tamaño!.hashValue) + 1)
                sizeSelected.setText(pizza.tamaño?.rawValue)
            } else {
                sizeSelected.setText(Pizza.Tam.Chica.rawValue)
                pizza.tamaño = Pizza.Tam.Chica
            }
        }
    }
    
    @IBAction func siguiente() {
        pushControllerWithName("SelectDoughViewController", context: pizza)
    }
    
}
