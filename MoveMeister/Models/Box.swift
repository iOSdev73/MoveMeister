//
//  Box.swift
//  MoveMeister
//
//  Created by Fatima Akram on 14.08.24.
//

import Foundation

/// Represents the details of a box, i.e., name, location etc
struct Box: Codable, Hashable {
    var name: String
    var location: String?
    var storedIn: String?
}
