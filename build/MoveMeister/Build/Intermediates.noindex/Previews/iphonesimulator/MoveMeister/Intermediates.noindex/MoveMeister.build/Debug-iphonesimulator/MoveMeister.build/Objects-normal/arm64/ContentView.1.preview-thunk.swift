@_private(sourceFile: "ContentView.swift") import MoveMeister
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/fatima.akram/Documents/iOS-work/SwiftUI Udemy/udemy2/MoveMeister/MoveMeister/Views/ContentView.swift", line: 12)
        NavigationStack {
            VStack (spacing: __designTimeInteger("#9877.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 20)) {

                Spacer()

                Image(systemName: __designTimeString("#9877.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "truck.box"))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.orange)
                    .frame(width: __designTimeInteger("#9877.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[3].arg[0].value", fallback: 200), height: __designTimeInteger("#9877.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[3].arg[1].value", fallback: 200))
                Text(__designTimeString("#9877.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value", fallback: "Move Meister"))
                    .font(.title)
                    .fontWeight(.bold)

                Spacer()

                NavigationLink {
                    BoxListView()
                } label: {
                    RoundedRectangle(cornerRadius: __designTimeInteger("#9877.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[0].arg[0].value", fallback: 25))
                        .frame(width: __designTimeInteger("#9877.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[0].modifier[0].arg[0].value", fallback: 200), height: __designTimeInteger("#9877.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[0].modifier[0].arg[1].value", fallback: 50))
                        .tint(.orange)
                        .overlay {
                            Text(__designTimeString("#9877.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[0].modifier[2].arg[0].value.[0].arg[0].value", fallback: "Get Started"))
                                .tint(.white)
                                .fontWeight(.bold)
                                .padding()
                        }
                        .padding()
                }
                Spacer()
            }
            .padding()
        }
    
#sourceLocation()
    }
}

import struct MoveMeister.ContentView
#Preview {
    ContentView()
}



