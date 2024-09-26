@_private(sourceFile: "BoxList.swift") import MoveMeister
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension BoxList {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/fatima.akram/Documents/iOS-work/SwiftUI Udemy/udemy2/MoveMeister/MoveMeister/BoxList/BoxList.swift", line: 12)
        Text(/*@START_MENU_TOKEN@*/__designTimeString("#7790.[1].[0].property.[0].[0].arg[0].value", fallback: "Hello, World!")/*@END_MENU_TOKEN@*/)
    
#sourceLocation()
    }
}

import struct MoveMeister.BoxList
#Preview {
    BoxList()
}



