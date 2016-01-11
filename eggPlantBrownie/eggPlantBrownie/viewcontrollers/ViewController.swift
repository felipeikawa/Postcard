//
//  ViewController.swift
//  eggPlantBrownie
//
//  Created by Felipe Ken Ikawa on 5/9/15.
//  Copyright (c) 2015 grape. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameTextField:UITextField!
    @IBOutlet var happinessTextField:UITextField!
    

    @IBAction func add() {
        var name:String = nameTextField.text
        var happiness:String = happinessTextField.text
        println("Adding \(name) \(happiness)")
    }


}

