@_private(sourceFile: "EmptyBoxView.swift") import MoveMeister
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension EmptyBoxView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/fatima.akram/Documents/iOS-work/SwiftUI Udemy/udemy2/MoveMeister/MoveMeister/EmptyBoxView.swift", line: 12)
        VStack {
            Spacer()
            Image(systemName: __designTimeString("#46205.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "shippingbox"))
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange)
                .fontWeight(.thin)
                .frame(width: __designTimeInteger("#46205.[1].[0].property.[0].[0].arg[0].value.[1].modifier[4].arg[0].value", fallback: 200), height: __designTimeInteger("#46205.[1].[0].property.[0].[0].arg[0].value.[1].modifier[4].arg[1].value", fallback: 200))
                .padding()
            Text(__designTimeString("#46205.[1].[0].property.[0].[0].arg[0].value.[2].arg[0].value", fallback: "No boxes added yet. Plese tap on the Add New Box button to add your moving boxes."))
                .font(.subheadline)
                .frame(width: __designTimeInteger("#46205.[1].[0].property.[0].[0].arg[0].value.[2].modifier[1].arg[0].value", fallback: 300), height: __designTimeInteger("#46205.[1].[0].property.[0].[0].arg[0].value.[2].modifier[1].arg[1].value", fallback: 200), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
            Spacer()
        }
    
#sourceLocation()
    }
}

import struct MoveMeister.EmptyBoxView
#Preview {
    EmptyBoxView()
}



