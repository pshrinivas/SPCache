//
//  InMemoryStorageProvider.swift
//  SPCache
//
//  Created by Shrinivas Prabhu on 10/09/18.
//  Copyright © 2018 Shrinivas Prabhu. All rights reserved.
//

import Foundation


class MemoryStorage : StorageProvider{
    
    private var container = [String : Data]()
    private var size = 0
    
    func get(for key: String) -> Data? {
        return container[key]
    }
    
    func delete(key : String){
        
        if let item = get(for: key){
            size = size - item.sizeInKb
        }
        
        container[key] = nil
    }
    
    func set(value: Data, key: String) {
        container[key] = value
        size = size + value.sizeInKb
    }
    
    func removeAll() {
        container.removeAll()
        size = 0
    }
    
    var currentMemoryInKb: UInt{
        return UInt(size)
    }
    
    var numberOfEntries: UInt{
        return UInt(container.count)
    }
}
