//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        var rarityList : [UDItemRarity:Int] = [ .Common: 0, .Uncommon: 0, .Rare: 0, .Legendary: 0 ] ;
        
        for item in inventory{
           // print("item name \(item.name) \(item.rarity)")
          switch item.rarity
          {
          case .Common:
            
        //    print("item name \(item.name) \(item.rarity)")
          rarityList[.Common] = rarityList[.Common]! + 1
         
          case .Legendary:
       //     print("item name \(item.name) \(item.rarity)")
            rarityList[.Legendary] = rarityList[.Legendary]! + 1
          case .Rare:
         //   print("item name \(item.name) \(item.rarity)")
            rarityList[.Rare] = rarityList[.Rare]! + 1
          case .Uncommon:
         //   print("item name \(item.name) \(item.rarity)")
            rarityList[.Uncommon] = rarityList[.Uncommon]! + 1
            }
            
        }
        return rarityList
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"