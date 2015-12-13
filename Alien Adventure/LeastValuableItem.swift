//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        var leastValueItem : UDItem?
   
        if (inventory.count == 0)
        { return nil
        }
        else
        {   var leastValue : Int = inventory[0].baseValue // assume first item is cheapest
            for item in inventory
            {
                if (item.baseValue <= leastValue)
                {
                    leastValue = item.baseValue   // swap if you find cheaper item than previous one
                    leastValueItem = item
                }
            }
            return leastValueItem
        }
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"