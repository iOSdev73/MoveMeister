//
//  BoxListViewModel.swift
//  MoveMeister
//
//  Created by Fatima Akram on 14.08.24.


import Foundation
import CoreData
import SwiftUI

class BoxListViewModel: ObservableObject {

    @Published var boxList: [Box] //bcy we need views to update

    init(boxList: [Box] = []) {
        self.boxList = boxList
    }

    func addBox(box: Box) {
        //_ = Box(name: name, location: location, storedIn: storedIn)
        boxList.append(box)
        self.objectWillChange.send()
    }

    func removeBox(box: Box) {
        boxList.removeAll { $0 == box }
    }
}
