//
//  DataExtension.swift
//  SPCache
//
//  Created by Shrinivas Prabhu on 11/09/18.
//  Copyright © 2018 Shrinivas Prabhu. All rights reserved.
//

import Foundation

extension Data{
    var sizeInKb : Int{
        return (count / 1024)
    }
}
