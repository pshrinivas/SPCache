//
//  Queue.swift
//  SPCache
//
//  Created by Shrinivas Prabhu on 11/09/18.
//  Copyright © 2018 Shrinivas Prabhu. All rights reserved.
//

import Foundation

struct Queue<T : Equatable>{
    private var container = [T]()
    
    mutating func enqueue(item : T){
        container.append(item)
    }
    
    mutating func dequeue() -> T? {
        if let first = container.first{
            container.removeFirst()
            return first
        }
        return nil
    }
    
    func peek() -> T?{
        return container.first
    }
    
    var count : Int {
        return container.count
    }
    
    mutating func remove(item : T){
        container = container.filter({ $0 != item })
    }
}
