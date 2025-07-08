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

    // MARK: - Box List Management

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

    func onDelete(at indexSet: IndexSet, _ modelContext: ModelContext) {
        for index in indexSet {
            let box = boxList[index]
            removeBox(box: box, context: modelContext)
        }
    }

    func removeBox(box: Box, context: ModelContext) {
        context.delete(box)
        try? context.save()
        boxList = fetchBoxes(context: context)
    }
}
