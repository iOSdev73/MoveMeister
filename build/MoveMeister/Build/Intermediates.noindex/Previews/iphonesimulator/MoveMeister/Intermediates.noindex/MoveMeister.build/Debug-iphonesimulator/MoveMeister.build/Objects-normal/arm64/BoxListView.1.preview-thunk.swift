@_private(sourceFile: "BoxListView.swift") import MoveMeister
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension BoxListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/fatima.akram/Documents/iOS-work/SwiftUI Udemy/udemy2/MoveMeister/MoveMeister/Views/BoxListView.swift", line: 18)
        NavigationStack {
            VStack {
                if boxList.isEmpty {
                    Spacer(minLength: __designTimeInteger("#50219.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[0].value", fallback: 100))
                    EmptyBoxView()
                        .padding()
                }
                List (boxList, id: \.self) { box in
                    NavigationLink {
                        BoxDetailView(box: box)
                    } label: {
                        Text(box.name?.capitalized ?? __designTimeString("#50219.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0]", fallback: "Default"))
                    }
                }
                .toolbar(content: {
                    ToolbarItem(placement: .bottomBar) {
                        Button {
                            newBoxName = __designTimeString("#50219.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].[0]", fallback: "") 
                            showAddBoxForm = __designTimeBoolean("#50219.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].[0]", fallback: true)
                        } label: {
                            HStack {
                                Image(systemName: __designTimeString("#50219.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "plus.circle"))
                                    .fontWeight(.bold)
                                Text(__designTimeString("#50219.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "Add new box"))
                                    .fontWeight(.bold)
                            }
                        }
                    }
                })
                .tint(.orange)
            }
            .navigationTitle(__designTimeString("#50219.[1].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: "List of Boxes"))
            .sheet(isPresented: $showAddBoxForm) {
                AddNewBoxView(isPresented: $showAddBoxForm)
            }
        }
    
#sourceLocation()
    }
}

import struct MoveMeister.BoxListView
#Preview {
    BoxListView()
}



