//
//  NewItemViewController.swift
//  eggPlantBrownie
//
//  Created by Felipe Ken Ikawa on 5/23/15.
//  Copyright (c) 2015 grape. All rights reserved.
//

import UIKit

class NewItemViewController: UIViewController {

    @IBOutlet var nameField:UITextField?
    @IBOutlet var caloriesField:UITextField?
    
    
    @IBAction func addNewItem (){
        if nameField == nil || caloriesField == nil {
            return
        }
        let name = nameField!.text
        let calories = NSString (string: caloriesField!.text).doubleValue
        
        let item = Item (name: name, calories: calories)
        
        if let navigation = navigationController {
            navigation.popViewControllerAnimated(true)
        }
        
    }

}
