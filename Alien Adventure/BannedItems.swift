//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        
        var bannedIds = [Int]()
       if  let urlForFile = NSBundle.mainBundle().URLForResource("ItemList", withExtension: "plist")
       {
        if let itemlist = NSArray(contentsOfURL: urlForFile) as? [[String:AnyObject]]
         {
          for item in itemlist
          {
           // let containsLaser : Bool
            if let name  = item["Name"] as? String
            {
            
                if (name.lowercaseString.containsString("laser") )
                {
                    if let histData = item["HistoricalData"] as? [String:AnyObject]
                    {
                        if let carbonAge = histData["CarbonAge"] as? Int
                        {
                           if (carbonAge < 30)
                            {
                                if let itemid = item["ItemID"] as? Int{
                                    
                                    bannedIds.append(itemid)
                                }
                                
                            }
                        }
                        
                    }
                    
                }
                
            }
           }
           
          }
          else
          {
           print("could not load into array from url")
          }
        }
        else
       {
        print("file not found")
        }
        return bannedIds
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"