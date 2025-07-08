//
//  MoveMeisterApp.swift
//  MoveMeister
//
//  Created by Fatima Akram on 14.08.24.
//

import SwiftUI
import SwiftData

@main
struct MoveMeisterApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Box.self)
    }
}
