//
//  Box.swift
//  MoveMeister
//
//  Created by Fatima Akram on 14.08.24.
//

import Foundation

/// Represents the details of a box, i.e., name, location etc
struct Box: Codable, Hashable, Identifiable, Equatable {
    var id: String{
        name
    }
    var name: String
    var location: String = ""
    var storedIn: String = ""
    var items: [Item] = [Item]()

    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
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
