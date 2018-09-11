//
//  SPCacheEvictionPolicy.swift
//  SPCache
//
//  Created by Shrinivas Prabhu on 10/09/18.
//  Copyright © 2018 Shrinivas Prabhu. All rights reserved.
//

import Foundation

protocol SPCacheEvictionPolicy {
    
    func acess(key : String)
    
    func delete(key : String)
    
    var nextEvictCandidateKey : String?{ get }
    
}
