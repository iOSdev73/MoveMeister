//
//  Item.swift
//  MoveMeister
//
//  Created by Fatima Akram on 16.08.24.
//

import Foundation

/// Represents the items in a box
struct Item: Codable, Identifiable {
    var id = UUID()
    var name: String
}

extension Item {
    static func dummyData(_ num: Int = 10) -> [Item] {
        (0...num).map { idx in
            Item(name: "Item \(idx)")
        }
    }
}
