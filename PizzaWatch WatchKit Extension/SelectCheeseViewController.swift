//
//  SelectCheeseViewController.swift
//  PizzaWatch
//
//  Created by Julio on 2/12/15.
//  Copyright © 2015 Julio. All rights reserved.
//

import Foundation
import WatchKit

class SelectCheeseViewController: WKInterfaceController {

    @IBOutlet var quesoSelected: WKInterfaceLabel!
    @IBOutlet var cheesePicker: WKInterfacePicker!
    var pizza: Pizza!
    
    
    @IBAction func selectionCheese(value: Int) {
        switch value {
        case 1:
            pizza.queso = Pizza.Queso.SinQueso
        case 2:
            pizza.queso = Pizza.Queso.Parmesano
        case 3:
            pizza.queso = Pizza.Queso.Mozarella
        case 4:
            pizza.queso = Pizza.Queso.Cheddar
        default:
            break
        }
        quesoSelected.setText(pizza.queso?.rawValue)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if context != nil {
            pizza = context as! Pizza
            quesoSelected.setText(Pizza.Queso.SinQueso.rawValue)
            pizza.queso = Pizza.Queso.SinQueso
        }
        
        cheesePicker.setItems(cheesePickerDataSource())
    }
    
    @IBAction func siguiente() {
        pushControllerWithName("SelectAdmisturesViewController", context: pizza)
    }
    
    func cheesePickerDataSource() -> [WKPickerItem] {
        var items = [WKPickerItem]()
        
        let sinQueso = WKPickerItem()
        sinQueso.title = "SinQueso"
        items.append(sinQueso)
        
        let parmesano = WKPickerItem()
        sinQueso.title = "Parmesano"
        items.append(parmesano)
        
        let mozarella = WKPickerItem()
        sinQueso.title = "Mozarella"
        items.append(mozarella)
        
        let cheddar = WKPickerItem()
        sinQueso.title = "Cheddar"
        items.append(cheddar)
        
        return items
    }
    
}
