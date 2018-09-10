//
//  StorageProvider.swift
//  SPCache
//
//  Created by Shrinivas Prabhu on 10/09/18.
//  Copyright © 2018 Shrinivas Prabhu. All rights reserved.
//

import Foundation

protocol StorageProvider {
    associatedtype StorageType
    
    func get(value forKey : String) -> StorageType
    
    func set(value : StorageType?, key : String)
    
    func removeAll()
    
}
