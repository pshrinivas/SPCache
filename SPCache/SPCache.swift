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
    
    private var evictionPolicy : SPCacheEvictionPolicy{
        return config.evictionPolicy
    }
    
    // Defines Storage provider
    private var storage : StorageProvider{
        return config.storage
    }
    
    private var memorySizeInKb : UInt{
        return config.memorySizeInKb
    }
    
    private var maxEntry : UInt{
        return config.maxEntry
    }
    
    init(config : SPCacheConfig = SPCacheConfig.defaultConfig) {
        self.config = config
    }
    
    subscript (key : String) -> T? {
        // the getter is required
        get {
            guard let storedData = storage.get(for: key),
                let value = T.deSerialize(data: storedData) as? T else{
                    return nil
            }
            
            evictionPolicy.acess(key: key)
            return value
        }
        set(newValue) {
            guard let newValue = newValue,
                let serializedValue = T.serialize(info: newValue) else{
                    storage.delete(key: key)
                    return
            }
            
            storage.set(value: serializedValue, key: key)
            evictionPolicy.acess(key: key)
            evictIfNeeded()
            
        }
    }
    
    private var shouldEvict : Bool{
        if (((storage.currentMemoryInKb != 0)
            && (memorySizeInKb <= storage.currentMemoryInKb)) ||
            ((storage.numberOfEntries != 0) &&
                (maxEntry <= storage.numberOfEntries))) {
            return true
        }
        
        return false
    }
    
    private func evictIfNeeded(){
        if shouldEvict{
            let evictionCandidateKey = evictionPolicy.nextEvictCandidateKey
            storage.delete(key: evictionCandidateKey)
        }
    }
    
    func clearAll(){
        storage.removeAll()
    }
    
}
