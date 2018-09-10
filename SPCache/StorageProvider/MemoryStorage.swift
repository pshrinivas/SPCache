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
    
    func get(for key: String) -> Data? {
        return container[key]
    }
    
    func set(value: Data?, key: String) {
        container[key] = value
    }
    
    func removeAll() {
        container.removeAll()
    }
    
    
    
    
}
