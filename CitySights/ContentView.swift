//
//  ContentView.swift
//  CitySights
//
//  Created by Dennis Crielaard on 07/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var query: String = ""
    var body: some View {
        HStack {
            TextField("What are you looking for?", text: $query)
                .textFieldStyle(.roundedBorder)
            
            Button {
                // TODO: Implement button query
            } label: {
                Text("Go")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
