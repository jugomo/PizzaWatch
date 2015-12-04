//
//  SelectDoughViewController.swift
//  PizzaWatch
//
//  Created by Julio on 2/12/15.
//  Copyright © 2015 Julio. All rights reserved.
//

import Foundation
import WatchKit

class SelectDoughViewController: WKInterfaceController {

    @IBOutlet var masaSelected: WKInterfaceLabel!
    @IBOutlet var masaSelector: WKInterfaceSlider!
    var pizza: Pizza!
    
    
    @IBAction func selectionSize(value: Float) {
        switch value {
        case 1:
            pizza.masa = Pizza.Masa.Delgada
        case 2:
            pizza.masa = Pizza.Masa.Crujiente
        case 3:
            pizza.masa = Pizza.Masa.Gruesa
        default:
            break
        }
        masaSelected.setText(pizza.masa?.rawValue)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if context != nil {
            pizza = context as! Pizza
            if pizza.masa != nil {
                masaSelector.setValue(Float(pizza.masa!.hashValue) + 1)
                masaSelected.setText(pizza.masa?.rawValue)
            } else {
                masaSelected.setText(Pizza.Masa.Delgada.rawValue)
                pizza.masa = Pizza.Masa.Delgada
            }
        }
    }
    
    @IBAction func siguiente() {
        pushControllerWithName("SelectCheeseViewController", context: pizza)
    }
    
}
