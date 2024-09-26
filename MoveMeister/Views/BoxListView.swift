//
//  BoxList.swift
//  MoveMeister
//
//  Created by Fatima Akram on 14.08.24.
//

import SwiftUI

struct BoxListView: View {

    @State var viewModel = BoxListViewModel()
    @State private var showAddBoxForm = false
    @State private var newBoxName = ""
    @State private var boxList: [Box] = []

    var body: some View {
        NavigationStack {
            VStack {
                if boxList.isEmpty {
                    Spacer(minLength: 100)
                    EmptyBoxView()
                        .padding()
                }
                List (boxList, id: \.self) { box in
                    NavigationLink {
                        BoxDetailView(box: box)
                    } label: {
                        Text(box.name.capitalized)
                    }
                }
                .toolbar(content: {
                    ToolbarItem(placement: .bottomBar) {
                        Button {
                            newBoxName = "" 
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
                    boxList.append(newBox)
                }
            }
        }
    }
}

#Preview {
    BoxListView()
}
