//
//  item.swift
//  eggPlantBrownie
//
//  Created by Felipe Ken Ikawa on 5/11/15.
//  Copyright (c) 2015 grape. All rights reserved.
//

import Foundation

class Item: Equatable {
    let name:String
    let calories:Double
    init (name:String, calories:Double){
        self.name = name
        self.calories = calories
    }
}

func == (first: Item, second:Item) -> Bool {
    return first.name == second.name && first.calories == second.calories
}