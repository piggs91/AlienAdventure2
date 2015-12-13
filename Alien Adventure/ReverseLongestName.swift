//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        
        var itemwithLongesName : UDItem?
        var length = 0
        
        // iterate over item list to find theh item with longest name
        for item in inventory
        {
         if ( item.name.characters.count >= length)
         {
            length = item.name.characters.count
            itemwithLongesName = item
            }
        }
        
        // unwrap optional and reverse the name. If no such item is there, return ""
        if let itemwithLongesName = itemwithLongesName
        {
        return String(itemwithLongesName.name.characters.reverse())
        }
        else
        {
            return ""
        }
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"