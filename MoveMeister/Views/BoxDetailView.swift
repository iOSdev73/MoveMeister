//
//  BoxDetailView.swift
//  MoveMeister
//
//  Created by Fatima Akram on 16.08.24.
//

import SwiftUI

struct BoxDetailView: View {

    // MARK: - Properties

    @State var box: Box
    @State private var items = [Item(name: "")]
    @State private var itemName = ""
    @State private var showEditBoxForm = false

    // MARK: - View

    var body: some View {
        VStack {
            if items.isEmpty {
                
            }
            List {
                ForEach(items) { item in
                    HStack {
                        TextField("Enter new item", text: $itemName)
                            .onSubmit {
                                print("On submit pressed")
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
                            EditBoxDetails(newBoxName: $box.name,
                                           newBoxLocation: optionalBinding($box.location, defaultValue: ""),
                                           newBoxStoreIn: optionalBinding($box.storedIn, defaultValue: ""),
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
