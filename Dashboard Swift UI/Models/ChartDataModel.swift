//
//  ChartDataModel.swift
//  Dashboard Swift UI
//
//  Created by Chethan J on 20/06/2023.
//

import Foundation

struct ChartDataWrapper<Key: Hashable, Value>: Identifiable {
    let id: Key
    let value: Value
    
    init(key: Key, value: Value) {
        self.id = key
        self.value = value
    }
}


