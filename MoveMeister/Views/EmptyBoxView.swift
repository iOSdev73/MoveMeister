//
//  EmptyBoxView.swift
//  MoveMeister
//
//  Created by Fatima Akram on 15.08.24.
//

import SwiftUI

struct EmptyBoxView: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "shippingbox")
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange)
                .fontWeight(.thin)
                .frame(width: 200, height: 200)
                .padding()
            Text("No boxes added yet. Plese tap on the Add New Box button to add your moving boxes.")
                .font(.subheadline)
                .frame(width: 300, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
            Spacer()
        }
    }
}

#Preview {
    EmptyBoxView()
}
