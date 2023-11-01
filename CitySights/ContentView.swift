//
//  ContentView.swift
//  CitySights
//
//  Created by Dennis Crielaard on 07/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var businesses = [Business]()
    @State var query: String = ""
    var service = DataService()
    
    var body: some View {
        VStack {
            HStack {
                TextField("What are you looking for?", text: $query)
                    .textFieldStyle(.roundedBorder)
                
                Button {
                    // TODO: Implement button query
                } label: {
                    Text("Go")
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            
            List(businesses) { business in
                Text(business.name ?? "Nil")
                
            }

        }
        .padding()
        .task {
                businesses = await service.businessSearch()
    }
    }
}

#Preview {
    ContentView()
}
