//
//  EditBoxDetails.swift
//  MoveMeister
//
//  Created by Fatima Akram on 26.09.24.
//

import SwiftUI

struct EditBoxDetails: View {

    // MARK: - Properties
    
    @Binding var box: Box
    @Binding var isPresented: Bool

    // MARK: - View

    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Box Details")) {
                    TextField("Box name", text: $box.name)
                    TextField("Box Room", text: $box.location)
                    TextField("Where is the box stored", text: $box.storedIn)
                }
            }
            .navigationTitle("Edit Box Detials")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        isPresented = false
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save Box") {
                        if !box.name.isEmpty {
                            box.name = box.name
                            box.location = box.location
                            print(isPresented)
                            isPresented = false
                        }
                    }
                }
            }
        }
    }
}

//#Preview {
//    EditBoxDetails(newBoxName: "1", newBoxLocation: "Kitchen", newBoxStoreIn: "Living Room")
//}
