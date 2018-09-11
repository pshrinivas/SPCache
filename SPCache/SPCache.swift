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
    
    subscript (key : String) -> T? {
        // the getter is required
        get {
            guard let storedData = config.storage.get(for: key),
                let value = T.deSerialize(data: storedData) as? T else{
                    return nil
            }
            
            config.evictionPolicy.acess(key: key)
            
            return value
        }
        set(newValue) {
            guard let newValue = newValue,
                let serializedValue = T.serialize(info: newValue) else{
                    config.storage.set(value: nil, key: key)
                    return
            }
            
            config.storage.set(value: serializedValue, key: key)
            
        }
    }
    
    func clearAll(){
        
    }
    
}
