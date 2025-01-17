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
    @StateObject var viewModel = BoxListViewModel()
    @State private var showEditBoxForm = false
    @State private var newItemName = ""

    // MARK: - View

    var body: some View {
         VStack {
             List(box.items.indices, id: \.self) { index in
                     HStack {
                         Image(systemName: "\(index + 1).circle")
                             .foregroundStyle(.orange)
                         TextField(box.items[index].name, text: Binding(
                             get: { box.items[index].name },
                             set: { box.items[index].name = $0 }
                         ))
                     }
             }
             .listStyle(PlainListStyle())

             TextField("Enter new item", text: $newItemName, onCommit: {
                 box.items = viewModel.addItem(box, $newItemName.wrappedValue)
                 /// Empty the item name field
                 newItemName = ""
             })
             .textFieldStyle(RoundedBorderTextFieldStyle())
             .padding()

         }
         .navigationTitle(box.name)
         .padding()
     }
}
