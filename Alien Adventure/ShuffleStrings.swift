//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        
        var s1index1 = 0
        
    
        
        if ( s1.characters.count + s2.characters.count != shuffle.characters.count)
        {
            return false
        }
        
        //check for s1 if order is correct in shuffle
        for chars in s1.characters
        {
            for (index,element) in shuffle.characters.enumerate()
            {
                if ( chars == element)
                {
                    if ( index < s1index1)
                    {
                        return false
                    }
                    else
                    {
                        s1index1 = index
                    }
                }
            }
        }
        
        
        
        //check for s2 in shuffle
        s1index1 = 0
        for chars in s2.characters
        {
            for (index,element) in shuffle.characters.enumerate()
            {
                if ( chars == element)
                {
                    if ( index < s1index1)
                    {
                        return false
                    }
                    else
                    {
                        s1index1 = index
                    }
                }
            }
        }
        
        
        return true
    }
}
