//
//  ContentView.swift
//  CitySights
//
//  Created by Dennis Crielaard on 07/10/2023.
//

import SwiftUI

struct HomeView: View {

    @Environment(BusinessModel.self) var model
    @State var selectedTab = 0
    
    var body: some View {
        @Bindable var model = model

        VStack {
            HStack {
                TextField("What are you looking for?", text: $model.query)
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
            
            // Show picker
            Picker("", selection: $selectedTab) {
                Text("List")
                    .tag(0)
                Text("Map")
                    .tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            // Show map or list
            if selectedTab == 1 {
                MapView()
                
            }
            else {
                ListView()
            }

        }
        .onAppear {
            model.getBusinesses()
        }
        .sheet(item: $model.selectedBusiness) { item in
            BusinessDetailView()
        }
    }
}

#Preview {
    HomeView()
        .environment(BusinessModel())
}
