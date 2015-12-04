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
    var pizza: Pizza!
    
    
    @IBAction func btnSinqueso() {
        pizza.queso = Pizza.Queso.SinQueso
        quesoSelected.setText(pizza.queso?.rawValue)
        quesoSelected.setTextColor(UIColor.orangeColor())
    }
    
    @IBAction func btnParmesano() {
        pizza.queso = Pizza.Queso.Parmesano
        quesoSelected.setText(pizza.queso?.rawValue)
        quesoSelected.setTextColor(UIColor.orangeColor())
    }
    
    @IBAction func btnMozarella() {
        pizza.queso = Pizza.Queso.Mozarella
        quesoSelected.setText(pizza.queso?.rawValue)
        quesoSelected.setTextColor(UIColor.orangeColor())
    }
    
    @IBAction func btnCheddar() {
        pizza.queso = Pizza.Queso.Cheddar
        quesoSelected.setText(pizza.queso?.rawValue)
        quesoSelected.setTextColor(UIColor.orangeColor())
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if context != nil {
            pizza = context as! Pizza
            if pizza.queso != nil {
                quesoSelected.setText(pizza.queso!.rawValue)
            }
        }
    }
    
    @IBAction func siguiente() {
        if pizza.queso != nil {
            pushControllerWithName("SelectAdmisturesViewController", context: pizza)
        } else {
            quesoSelected.setText("por favor, seleccione el tipo de queso")
            quesoSelected.setTextColor(UIColor.redColor())
        }
    }
    
}
