//
//  EditBoxDetails.swift
//  MoveMeister
//
//  Created by Fatima Akram on 26.09.24.
//

import SwiftUI

struct EditBoxDetails: View {

    // MARK: - Properties
    
    @Binding var newBoxName: String
    @Binding var newBoxLocation: String
    @Binding var newBoxStoreIn: String
    @Binding var isPresented: Bool

    // MARK: - View

    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Box Details")) {
                    TextField("Box name", text: $newBoxName)
                    TextField("Box Room", text: $newBoxLocation)
                    TextField("Where is the box stored", text: $newBoxStoreIn)
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
                        if !newBoxName.isEmpty {
                            newBoxName = newBoxName
                            newBoxLocation = newBoxLocation
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
