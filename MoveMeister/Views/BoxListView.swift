//
//  BoxList.swift
//  MoveMeister
//
//  Created by Fatima Akram on 14.08.24.
//

import SwiftUI

struct BoxListView: View {

    // MARK: - Properties
    
    @StateObject var viewModel = BoxListViewModel(boxList: Box.dummyData(5)) // but when its an object then its StateObject
    @State private var showAddBoxForm = false
    //@State private var newBoxName = ""

    // MARK: - View

    var body: some View {
        NavigationStack {
            VStack {
                if viewModel.boxList.isEmpty {
                    Spacer(minLength: 100)
                    EmptyBoxView()
                        .padding()
                }
                List($viewModel.boxList) { box in
                    NavigationLink {
                        BoxItemsListView(box: box)
                    } label: {
                        Text(box.wrappedValue.name.capitalized) // bcz its a bidning
                    }
                }
                .toolbar(content: {
                    ToolbarItem(placement: .bottomBar) {
                        Button {
                            //newBoxName = "" 
                            showAddBoxForm = true
                        } label: {
                            HStack {
                                Image(systemName: "plus.circle")
                                    .fontWeight(.bold)
                                Text("Add new box")
                                    .fontWeight(.bold)
                            }
                        }
                    }
                })
                .tint(.orange)
            }
            .navigationTitle("List of Boxes")
            .sheet(isPresented: $showAddBoxForm) {
                AddNewBoxView(isPresented: $showAddBoxForm) { newBox in
                    viewModel.boxList.append(newBox)
                }
            }
        }
    }
}

#Preview {
    BoxListView()
}
