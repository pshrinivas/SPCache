//
//  LRUEvictionPolicy.swift
//  SPCache
//
//  Created by Shrinivas Prabhu on 10/09/18.
//  Copyright © 2018 Shrinivas Prabhu. All rights reserved.
//

import Foundation

class LRUEvictionPolicy : SPCacheEvictionPolicy{

    private var queue = [String]()
    
    func acess(key: String) {
        queue.append(key)
    }
    
    func delete(key: String) {
    
    }
    
    var nextEvictCandidate: String{
        return ""
    }
    
    var shouldEvict: Bool{
        return false
    }
    
    
    
}
