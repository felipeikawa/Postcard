//
//  MealsTableViewController.swift
//  eggPlantBrownie
//
//  Created by Felipe Ken Ikawa on 5/11/15.
//  Copyright (c) 2015 grape. All rights reserved.
//

import UIKit

class MealsTableViewController: UITableViewController, AddAMealDelegate {

    var meals = [ Meal (name: "EggPlant Brownie", happiness: 5),
                Meal(name: "Arroz Feijao", happiness: 4),
                Meal(name: "Macarro", happiness: 11)]
    
    
    
    func add (meal:Meal){
        meals.append(meal)
        tableView.reloadData()
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "addMeal" {
            var view = segue.destinationViewController as! ViewController
            view.secondView = self
            
        }
    }
    

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let row = indexPath.row
        let meal = meals[row]
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)
        cell.textLabel!.text = meal.name
      
        return cell
    }


}
