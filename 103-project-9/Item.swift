//
//  Item.swift
//  103-project-9
//
//  Created by Mike Miller on 5/16/26.
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
