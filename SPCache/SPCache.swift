//
//  SPCache.swift
//  SPCache
//
//  Created by Shrinivas Prabhu on 10/09/18.
//  Copyright © 2018 Shrinivas Prabhu. All rights reserved.
//

import Foundation

class SPCache<T : SerializationProtocol>{
    
    private var config : SPCacheConfig
    
    init(config : SPCacheConfig = SPCacheConfig.defaultConfig) {
        self.config = config
    }
    
//    subscript (key : String) -> T? {
//        // the getter is required
//        get {
//        // used for subscript value declarations
//         //   return config.storage.get(for: key)
//        }
//        set(newValue) { // the setter is optional
//        // definitions are written here
//        }
//    }
    
    func clearAll(){
        
    }
    
    func serialize(){
        
    }
}
