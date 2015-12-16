//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        var OldAge = 0
        var OldItem : UDItem?
        for item in inventory{
        if (   (item.historicalData["PlanetOfOrigin"] as! String) == "Cunia" )
        {
         
            
            let age = item.historicalData["CarbonAge"] as! Int
            
            if( age >= OldAge)
            {
                OldAge = age
                OldItem = item
                
            }
            
            }
        }
        return OldItem
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"