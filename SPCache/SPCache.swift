//
//  SPCache.swift
//  SPCache
//
//  Created by Shrinivas Prabhu on 10/09/18.
//  Copyright © 2018 Shrinivas Prabhu. All rights reserved.
//

import Foundation

class SPCache<T>{
    
    subscript (key : String) -> T? {
        // the getter is required
        get {
        // used for subscript value declarations
            return nil
        }
        set(newValue) { // the setter is optional
        // definitions are written here
        }
    }
    
    func clearAll(){
        
    }
}
