//
//  Item.swift
//  MoveMeister
//
//  Created by Fatima Akram on 16.08.24.
//

import Foundation

/// Represents the items in a box
struct Item: Codable, Identifiable {
    let id = UUID()
    var name: String
}
