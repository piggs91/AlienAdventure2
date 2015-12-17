//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
  
    //function to return max repeating characte in a string
    func smartSort(var str:String) -> Character?
    {   str=String(str.characters.sort())
        
        var currentCount = 0
        var maxCount = 0
        var currentCharacter = str.characters.first
        var maxCharacter = str.characters.first
        
        for char in str.characters
        {
            // change current character if different
            if ( currentCharacter != char)
            {
                currentCharacter = char
                currentCount = 1
                
            }
                
            else
            {
                currentCount++
            }
            
            
            if ( currentCount >= maxCount)
            {
                maxCount = currentCount
                maxCharacter = currentCharacter
            }
            
            
        }
        return maxCharacter
        
    }
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        var allNames = ""
        
       // combine all to a single string
        for item in inventory
        {
           
           // print(item.name)
            allNames += item.name.lowercaseString
            
        }
       
        
        return smartSort(allNames)
    }
}
