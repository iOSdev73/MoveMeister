//
//  BoxListViewModel.swift
//  MoveMeister
//
//  Created by Fatima Akram on 14.08.24.


import Foundation
import SwiftData
import SwiftUI

class BoxListViewModel: ObservableObject {

    @Published var boxList: [Box]
    @Published var items: [Item]?

    init(boxList: [Box] = [], items: [Item]? = nil) {
        self.boxList = boxList
        self.items = items
    }

//    func addBox(box: Box) {
//        boxList.append(box)
//        self.objectWillChange.send()
//    }

    // MARK: - Box List Management via SiwftData

    func fetchBoxes(context: ModelContext) -> [Box] {
        let descriptor = FetchDescriptor<Box>()
        do {
            return try context.fetch(descriptor)
        } catch {
            print("Fetch failed \(error)")
            return []
        }
    }

    func addBox(box: Box, context: ModelContext) {
        let newBox = box
        context.insert(newBox)
        try? context.save()
        boxList = fetchBoxes(context: context)
    }

    func removeBox(box: Box, context: ModelContext) {
        context.delete(box)
        try? context.save()
        boxList = fetchBoxes(context: context)
    }

    //  Items List

//    func addItem(_ box: Box, _ newItem: String) -> [Item]{
//        var boxWithNewItem = box
//        if !newItem.isEmpty {
//            boxWithNewItem.items.append(Item(name: newItem))
//            self.objectWillChange.send()
//        }
//        return boxWithNewItem.items
//    }

}
