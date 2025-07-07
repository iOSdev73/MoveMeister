//
//  Box.swift
//  MoveMeister
//
//  Created by Fatima Akram on 14.08.24.
//

import Foundation
import SwiftData

/// Represents the details of a box, i.e., name, location etc
@Model
class Box {
    @Attribute(.unique) var id: UUID
    var name: String
    var location: String
    var storedIn: String
    var items: [Item]

    init(id: UUID = UUID(), name: String, location: String = "", storedIn: String = "", items: [Item] = [Item]()) {
        self.id = id
        self.name = name
        self.location = location
        self.storedIn = storedIn
        self.items = items
    }

//    func hash(into hasher: inout Hasher) {
//        hasher.combine(id)
//    }
}

extension Box {
    static func dummyData(_ num: Int = 10, filled: Bool = true) -> [Box] {
        (0...num).map { idx in
            if filled {
                Box(name: "Box \(idx)", location: "Location \(idx)", storedIn: "Stored In \(idx)")
            } else {
                Box(name: "Box \(idx)")
            }
        }
    }
}
