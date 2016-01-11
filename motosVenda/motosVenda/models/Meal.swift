//
//  Meal.swift
//  eggPlantBrownie
//
//  Created by Felipe Ken Ikawa on 5/11/15.
//  Copyright (c) 2015 grape. All rights reserved.
//

import Foundation

class Meal {
    let name:String
    let happiness:Int
    var items = Array <Item> ()
    init(name: String, happiness:Int){
        self.name = name
        self.happiness = happiness
    }
    func allCalories () ->Double {
        var total = 0.0
        for item in items {
            total += item.calories
        }
        return total 
    }
    
}
