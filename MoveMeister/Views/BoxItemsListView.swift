//
//  BoxDetailView.swift
//  MoveMeister
//
//  Created by Fatima Akram on 16.08.24.
//

import SwiftUI

struct BoxItemsListView: View {

    // MARK: - Properties

    @Binding var box: Box
    @StateObject var viewModel = BoxListViewModel(items: Item.dummyData(5))
    @State private var showEditBoxForm = false
    @State private var newItemName = " "
    @FocusState private var isNewItemFocused: Bool

    // MARK: - View

    var body: some View {
        VStack {
            TextEditor(text: $newItemName)
                .onChange(of: newItemName) { oldValue, newValue in
                    guard newValue.last == "\n" else { return }

                    DispatchQueue.main.async {
                        let newItem = newItemName
                            .components(separatedBy: "\n")
                            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
                            .filter { !$0.isEmpty }
                        if let lastItem = newItem.last {
                            //box.items = $viewModel.addItem(box, lastItem)
                        }
                    }
                }
                .onAppear {
                    newItemName = box.items.map { $0.name }.joined(separator: "\n")
                    isNewItemFocused = true
                }
        }
        .navigationTitle("Items in \(box.name)")
        .toolbar {
            ToolbarItem (placement: .navigationBarTrailing) {
                Button {
                    showEditBoxForm = true
                } label: {
                    Image(systemName: "info.circle")
                        .foregroundColor(.orange)
                }
                .popover(isPresented: $showEditBoxForm) {
                    VStack {
                        EditBoxDetails(box: $box,
                                       isPresented: $showEditBoxForm)
                    }
                }
            }
        }
        .padding()
    }
}
