//
//  BoxList.swift
//  MoveMeister
//
//  Created by Fatima Akram on 14.08.24.
//

import SwiftUI
import SwiftData

struct BoxListView: View {

    // MARK: - Properties

    @StateObject var viewModel = BoxListViewModel(boxList: Box.dummyData(6))
    @State private var showAddBoxForm = false
    @Environment(\.modelContext) private var modelContext

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
                        Text(box.wrappedValue.name.capitalized)
                    }
                }
                .toolbar(content: {
                    ToolbarItem(placement: .bottomBar) {
                        Button {
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
            .onAppear {
                #if !DEBUG
                    viewModel.boxList = viewModel.fetchBoxes(context: modelContext)
                #endif
            }
            .navigationTitle("List of Boxes")
            .navigationBarBackButtonHidden(true)
            .sheet(isPresented: $showAddBoxForm) {
                AddNewBoxView(isPresented: $showAddBoxForm) { newBox in
                    let box = Box(name: newBox.name)
                    viewModel.addBox(box: box, context: modelContext)
                    // even calling it here is not helping
                    viewModel.boxList = viewModel.fetchBoxes(context: modelContext)
                    print(box)
                }
            }
        }
    }
}

#Preview {
    BoxListView(viewModel: BoxListViewModel(boxList: Box.dummyData(6)))
}
