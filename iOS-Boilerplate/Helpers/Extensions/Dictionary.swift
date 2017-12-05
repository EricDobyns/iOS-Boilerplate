//
//  Dictionary.swift
//  Shrubhub
//
//  Created by Eric Dobyns on 3/31/17.
//  Copyright © 2017 HOTB Software Solutions. All rights reserved.
//

extension Dictionary where Value: Equatable {
    func keysForValue(value: Value) -> [Key] {
        return flatMap { (key: Key, val: Value) -> Key? in
            value == val ? key : nil
        }
    }
}
