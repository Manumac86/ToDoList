//
//  Item.swift
//  ToDoList
//
//  Created by Emmanuel Martinez on 9/6/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
