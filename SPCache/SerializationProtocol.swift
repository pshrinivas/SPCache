//
//  SerializationProtocol.swift
//  SPCache
//
//  Created by Shrinivas Prabhu on 10/09/18.
//  Copyright © 2018 Shrinivas Prabhu. All rights reserved.
//

import Foundation

protocol SerializationProtocol {
    static func serialize(info : SerializationProtocol) -> Data?
    static func deSerialize(data : Data) -> SerializationProtocol?
}
