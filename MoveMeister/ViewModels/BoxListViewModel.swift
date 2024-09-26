//
//  BoxListViewModel.swift
//  MoveMeister
//
//  Created by Fatima Akram on 14.08.24.


import Foundation
import CoreData
import SwiftUI

@Observable
class BoxListViewModel {

    func addNewBox(name: String, location: String, storedIn: String) {
        _ = Box(name: name, location: location, storedIn: storedIn)
       // boxList.append(newBox)
    }
}
