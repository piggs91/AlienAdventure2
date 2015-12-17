//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    // enumeration to store the scores according to rarity of items
    enum Points:Int
    {
        case Common = 1 , Uncommon , Rare , Legendary
    }
    
   // function to calculate score
    func calculateScore(Common : Int , Legendary : Int, Uncommon : Int , Rare : Int) -> Int
        {
            return ( Common * Points.Common.rawValue ) + ( Legendary * Points.Legendary.rawValue ) + ( Rare * Points.Rare.rawValue ) + ( Uncommon * Points.Uncommon.rawValue)
        }
    
    
    func planetData(dataFile: String) -> String {
        
        var mostIntriguingPlanet = (planetName : "", score : 0)
      
        
        guard let urlForFile = NSBundle.mainBundle().URLForResource("PlanetData", withExtension: "json")
        else
        {
        print("file not found")
         return ""
        }
        guard let rawPlanetData = NSData(contentsOfURL: urlForFile)
        else
        {
            print("cannot convert to raw data")
            return ""
        }
    
     guard let planetData = try! NSJSONSerialization.JSONObjectWithData(rawPlanetData, options: NSJSONReadingOptions()) as? [[String:AnyObject]]
        else
     {
        print("cannot convert to ")
        return ""
        }
    for item in planetData
    {
      
      let score = calculateScore(item["CommonItemsDetected"] as! Int, Legendary: item["LegendaryItemsDetected"] as! Int, Uncommon: item["UncommonItemsDetected"] as! Int, Rare: item["RareItemsDetected"] as! Int)
    
        if mostIntriguingPlanet.score <= score
        {
            mostIntriguingPlanet.score = score
            mostIntriguingPlanet.planetName = item["Name"] as! String
        }
        
        
        }
        
           return mostIntriguingPlanet.planetName
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"