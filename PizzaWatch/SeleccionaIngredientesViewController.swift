//
//  SeleccionaIngredientesViewController.swift
//  PizzaGenerator
//
//  Created by julio on 14/11/15.
//  Copyright (c) 2015 julio. All rights reserved.
//

import UIKit

class SeleccionaIngredientesViewController: UIViewController {

    var myPizza: Pizza?
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destino = segue.destinationViewController as? ConfirmarViewController
        destino?.myPizza = self.myPizza
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if myPizza?.ingredientes == nil {
            let alert = UIAlertController(title: "Atención!", message: "Selecciona al menos una opcion", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            return false
        } else {
            return true
        }
    }
    
    @IBAction func selectedJamon(sender: UISwitch) {
        if sender.on {
            myPizza?.ingredientes[0] = Pizza.Ingredientes.jamon
        } else {
            myPizza?.ingredientes[0] = nil
        }
    }
    
    @IBAction func selectedPeperoni(sender: UISwitch) {
        if sender.on {
            myPizza?.ingredientes[1] = Pizza.Ingredientes.peperoni
        } else {
            myPizza?.ingredientes[1] = nil
        }
    }
    
    @IBAction func selectedPavo(sender: UISwitch) {
        if sender.on {
            myPizza?.ingredientes[2] = Pizza.Ingredientes.pavo
        } else {
            myPizza?.ingredientes[2] = nil
        }
    }
    
    @IBAction func selectedSalchicha(sender: UISwitch) {
        if sender.on {
            myPizza?.ingredientes[3] = Pizza.Ingredientes.salchicha
        } else {
            myPizza?.ingredientes[3] = nil
        }
    }
    
    @IBAction func selectedAceitunas(sender: UISwitch) {
        if sender.on {
            myPizza?.ingredientes[4] = Pizza.Ingredientes.aceituna
        } else {
            myPizza?.ingredientes[4] = nil
        }
    }
    
    @IBAction func selectedCebolla(sender: UISwitch) {
        if sender.on {
            myPizza?.ingredientes[5] = Pizza.Ingredientes.cebolla
        } else {
            myPizza?.ingredientes[5] = nil
        }
    }
    
    @IBAction func selectedPimiento(sender: UISwitch) {
        if sender.on {
            myPizza?.ingredientes[6] = Pizza.Ingredientes.pimiento
        } else {
            myPizza?.ingredientes[6] = nil
        }
    }
    
    @IBAction func selectedPiña(sender: UISwitch) {
        if sender.on {
            myPizza?.ingredientes[7] = Pizza.Ingredientes.piña
        } else {
            myPizza?.ingredientes[7] = nil
        }
    }
    
    @IBAction func selectedZanahoria(sender: UISwitch) {
        if sender.on {
            myPizza?.ingredientes[8] = Pizza.Ingredientes.anchoa
        } else {
            myPizza?.ingredientes[8] = nil
        }
    }
    
}
