//
//  StorageProvider.swift
//  SPCache
//
//  Created by Shrinivas Prabhu on 10/09/18.
//  Copyright © 2018 Shrinivas Prabhu. All rights reserved.
//

import Foundation

protocol StorageProvider {
    
    func get(for key : String) -> Data?
    
    func set(value : Data, key : String)
    
    func delete(key : String)
    
    func removeAll()
    
    var currentMemoryInKb : UInt { get }
    
    var numberOfEntries : UInt { get }
    
}

