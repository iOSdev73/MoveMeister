@_private(sourceFile: "BoxDetailView.swift") import MoveMeister
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension BoxDetailView {
    @_dynamicReplacement(for: addItem()) private func __preview__addItem() {
        #sourceLocation(file: "/Users/fatima.akram/Documents/iOS-work/SwiftUI Udemy/udemy2/MoveMeister/MoveMeister/Views/BoxDetailView.swift", line: 45)
            items.append(Item(name: __designTimeString("#50354.[1].[4].[0].modifier[0].arg[0].value.arg[0].value", fallback: "gggg")))
    
#sourceLocation()
    }
}

extension BoxDetailView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/fatima.akram/Documents/iOS-work/SwiftUI Udemy/udemy2/MoveMeister/MoveMeister/Views/BoxDetailView.swift", line: 19)
        VStack {
            List {
                ForEach($items) { $item in
                    HStack {
                        Image(systemName: __designTimeString("#50354.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "circle"))
                        TextField(__designTimeString("#50354.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "Enter new item"), text: $item.name, onCommit: addItem)

                    }
                }
                .onDelete(perform: { indexSet in
                    items.remove(atOffsets: indexSet)
                })
            }
            .scrollContentBackground(.hidden)
            .navigationTitle(box.name)
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem (placement: .navigationBarTrailing) {
                    Image(systemName: __designTimeString("#50354.[1].[3].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "info.circle"))
                        .foregroundColor(.orange)
                }
            }
        }
    
#sourceLocation()
    }
}

import struct MoveMeister.BoxDetailView
#Preview {
    BoxDetailView(box: Box(name: "Kitchen", location: nil, storedIn: nil))
}



