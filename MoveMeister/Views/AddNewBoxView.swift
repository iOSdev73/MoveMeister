//
//  AddNewBoxView.swift
//  MoveMeister
//
//  Created by Fatima Akram on 15.08.24.
//

import SwiftUI

struct AddNewBoxView: View {

    // MARK: - Properties

    @State var newBoxName = ""
    @State var newBoxLocation = ""
    @State var newBoxStoreIn = ""
    @Binding var isPresented: Bool
    var addBox: (Box) -> Void

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
            .navigationTitle("Add New Box")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        isPresented = false
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Add Box") {
                        if !newBoxName.isEmpty {
                            let newBox = Box(name: newBoxName, location: newBoxLocation, storedIn: newBoxStoreIn)
                            addBox(newBox)
                            isPresented = false
                        }
                    }
                }
            }
        }
    }
}


//#Preview {
//    AddNewBoxView(newBoxName: "NewBox", isPresented: true, onAdd: <#() -> Void#>)
//}
