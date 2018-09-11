//
//  LRUEvictionPolicy.swift
//  SPCache
//
//  Created by Shrinivas Prabhu on 10/09/18.
//  Copyright © 2018 Shrinivas Prabhu. All rights reserved.
//

import Foundation

class LRUEvictionPolicy : SPCacheEvictionPolicy{
    
    private var queue = Queue<String>()
    
    func acess(key: String) {
        queue.remove(item: key)
        queue.enqueue(item: key)
    }
    
    func delete(key: String) {
        queue.remove(item: key)
    }
    
    var nextEvictCandidateKey: String?{
        return queue.peek()
    }
    
    
    
}
