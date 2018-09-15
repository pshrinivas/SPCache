//
//  DiskStorage.swift
//  SPCache
//
//  Created by Shrinivas Prabhu on 11/09/18.
//  Copyright © 2018 Shrinivas Prabhu. All rights reserved.
//

import Foundation


class DiskStorage: StorageProvider {
    
    var identifier : String
    
    init(identifier : String) {
        self.identifier = identifier
        
        let fileManager = FileManager.default
        if let folderUrl = Utilities.getDocumentsDirectoryPath(identifier){
            if !fileManager.fileExists(atPath: folderUrl.path) {
                do {
                    try fileManager.createDirectory(atPath: folderUrl.path, withIntermediateDirectories: true, attributes: nil)
                } catch {
                    print("Directory with name \(identifier) exists!!")
                }
            }
        }
    }
    
    func get(for key: String) -> Data? {
        if let fileURL = Utilities.getDocumentsDirectoryPath(key){
                //reading
                do {
                    let data = try Data(contentsOf: fileURL)
                    return data
                }
                catch {/* error handling here */}
            }
            return nil
    }
    
    func set(value: Data, key: String) {
        if let fileURL = Utilities.getDocumentsDirectoryPath(key){
                
                //writing
                do {
                    try value.write(to: fileURL)
                }
                catch {/* error handling here */}
            }
    }
    
    func delete(key: String) {
        if let fileURL = Utilities.getDocumentsDirectoryPath(key){
            do {
                try FileManager.default.removeItem(at: fileURL)
            }
            catch {/* error handling here */}
        }
        
    }
    
    func removeAll() {
        
    }
    
    var currentMemoryInKb: UInt{
        return 0
    }
    
    var numberOfEntries: UInt{
        return 0
    }
    
    
}
