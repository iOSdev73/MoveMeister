//
//  BoxListViewModel.swift
//  MoveMeister
//
//  Created by Fatima Akram on 14.08.24.


import Foundation
import CoreData
import SwiftUI

class BoxListViewModel: ObservableObject {

    @Published var boxList: [Box]

    init(boxList: [Box] = []) {
        self.boxList = boxList
    }

    func addBox(box: Box) {
        boxList.append(box)
        self.objectWillChange.send()
    }

    func removeBox(box: Box) {
        boxList.removeAll { $0 == box }
    }

    //  Items List

    func addItem(_ box: Box, _ newItem: String) -> [Item]{
        var boxWithNewItem = box
        if !newItem.isEmpty {
            boxWithNewItem.items.append(Item(name: newItem))
            self.objectWillChange.send()
        }
        return boxWithNewItem.items
    }
}
