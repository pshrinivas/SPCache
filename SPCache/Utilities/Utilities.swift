//
//  Utilities.swift
//  SPCache
//
//  Created by Shrinivas Prabhu on 11/09/18.
//  Copyright © 2018 Shrinivas Prabhu. All rights reserved.
//

import Foundation

class Utilities{
    
    static func getDocumentsDirectoryPath(_ name : String) -> URL? {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first{
            if let fileName = name.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed){
                let fileURL = dir.appendingPathComponent(fileName)
                return fileURL
            }
        }
        
        return nil
    }
    
}
