//
//  SPCacheConfig.swift
//  SPCache
//
//  Created by Shrinivas Prabhu on 10/09/18.
//  Copyright © 2018 Shrinivas Prabhu. All rights reserved.
//

import Foundation

struct SPCacheConfig{
    
    // Unique Identifier for config
    private (set) var identifier : String
    
    // Defines eviction Policy
    private (set) var evictionPolicy : SPCacheEvictionPolicy
    
    // Defines Storage provider
    private (set) var storage : StorageProvider
    
    // Indicates memory size in kb
    // Default value is 0 indicating unlimited memory
    private (set) var memorySizeInKb : UInt = 0
    
    // Indicates max entry made in cache
    // Default value is 0 indicating unlimited entry
    private (set) var maxEntry : UInt = 0
    
    static var defaultConfig : SPCacheConfig{
        let memoryStorage = MemoryStorage()
        let evictionPolicy = LRUEvictionPolicy()
        return SPCacheConfig(identifier: "default", evictionPolicy: evictionPolicy, storage: memoryStorage, memorySizeInKb: 1024, maxEntry: 100)
    }
}
