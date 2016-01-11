//
//  ViewController.swift
//  eggPlantBrownie
//
//  Created by Felipe Ken Ikawa on 5/9/15.
//  Copyright (c) 2015 grape. All rights reserved.
//

import UIKit

protocol AddAMealDelegate {
    
    func add(meal:Meal)
}

//protocol AddAItemDelegate {
//    func add(item:Item)
//}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var nameTextField:UITextField?
    @IBOutlet var happinessTextField:UITextField?
    var secondView :AddAMealDelegate?
  
    
    
    var items = [
            Item(name: "EggPlant Brownie", calories: 10),
            Item(name: "Zuchinni Muffin", calories: 10),
            Item(name: "Mussarela Pizza", calories: 10),
            Item(name: "Trukey legs", calories: 100),
            Item(name: "Burger King", calories: 200)
                ]
    
    
    override func viewDidLoad() {
        let newItemButton = UIBarButtonItem(title: "New Item",
                    style: UIBarButtonItemStyle.Plain,
                    target: self,
                    action: Selector ("showNewItem") )
        navigationItem.rightBarButtonItem = newItemButton
    }

    func showNewItem () {
        let newItem = NewItemViewController (nibName: "NewItemViewController" , bundle: nil)
            if let navigation  = navigationController {
                navigation.pushViewController (newItem, animated: true)
            }
        
        
    }
    
    var selected = Array <Item> ()
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let row = indexPath.row
        let item = items[row]
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)
        cell.textLabel!.text = item.name
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        if cell == nil{
            return
        }
        var item = items [indexPath.row]
        if cell!.accessoryType == UITableViewCellAccessoryType.None{
        cell!.accessoryType = UITableViewCellAccessoryType.Checkmark
            selected.append(item)
        } else {
            cell!.accessoryType = UITableViewCellAccessoryType.None
            if let position = find(selected, item){
            selected.removeAtIndex(position)
            }
        }
    }

    @IBAction func add() {
        
        if nameTextField == nil || happinessTextField == nil {
            return
        }
        
        let name = nameTextField!.text
        let happiness = happinessTextField!.text.toInt()
        
        if happiness == nil {
            return
        }
        
        let meal = Meal (name: name, happiness: happiness!)
        
        meal.items = selected
        
        
        
        println("Adding \(meal.name) \(meal.happiness) \(meal.items)")
        
        if secondView == nil {
            return
        }
        secondView!.add(meal)
        

        
        if let navigation = self.navigationController {
            navigationController?.popViewControllerAnimated(true)
            
            
        }
        
    }


}

