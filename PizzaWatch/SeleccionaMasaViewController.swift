//
//  SeleccionaMasaViewController.swift
//  PizzaGenerator
//
//  Created by julio on 14/11/15.
//  Copyright (c) 2015 julio. All rights reserved.
//

import UIKit

class SeleccionaMasaViewController: UIViewController {

    var myPizza: Pizza?
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destino = segue.destinationViewController as? SeleccionaQuesoViewController
        destino?.myPizza = self.myPizza
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if myPizza?.masa == nil {
            let alert = UIAlertController(title: "Atención!", message: "Selecciona una opcion", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            return false
        } else {
            return true
        }
    }
    
    @IBAction func selectedDelgada(sender: UIButton) {
        myPizza?.masa = Pizza.Masa.Delgada
    }
    
    @IBAction func selectedCrujiente(sender: UIButton) {
        myPizza?.masa = Pizza.Masa.Crujiente
    }
    
    @IBAction func selectedGruesa(sender: UIButton) {
        myPizza?.masa = Pizza.Masa.Gruesa
    }
    
}
