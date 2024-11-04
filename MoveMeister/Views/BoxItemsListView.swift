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
    @State private var items = [Item(name: "")]
    @State private var showEditBoxForm = false

    // MARK: - View

    var body: some View {
        VStack {
            if items.isEmpty {
                
            }
            List {
                ForEach($items) { $item in
                    HStack {
                        TextField("Enter new item", text: $item.name)
                            .onSubmit {
                                if !item.name.isEmpty {
                                      items.append(Item(name: ""))
                                  }
                            }
                    }
                }
            }
            .scrollContentBackground(.hidden)
            .navigationTitle(box.name)
            .navigationBarTitleDisplayMode(.inline)
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
        }
    }

    // helper fucntion for optional bindings
    func optionalBinding(_ optional: Binding<String?>, defaultValue: String) -> Binding<String> {
        return Binding<String>(
            get: { optional.wrappedValue ?? defaultValue },
            set: {_ in }
        )
    }
}

//#Preview {
//    BoxDetailView(box: Box(name: "Kitchen", location: nil, storedIn: nil))
//}
