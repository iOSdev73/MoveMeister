//
//  ContentView.swift
//  MoveMeister
//
//  Created by Fatima Akram on 14.08.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack (spacing: 20) {

                Spacer()

                Image(systemName: "truck.box")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.orange)
                    .frame(width: 200, height: 200)
                Text("Move Meister")
                    .font(.title)
                    .fontWeight(.bold)

                Spacer()

                NavigationLink {
                    BoxListView()
                } label: {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 200, height: 50)
                        .tint(.orange)
                        .overlay {
                            Text("Get Started")
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
    }
}

#Preview {
    ContentView()
}
