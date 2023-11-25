//
//  CitySightsApp.swift
//  CitySights
//
//  Created by Dennis Crielaard on 07/10/2023.
//

import SwiftUI

@main
struct CitySights: App {
    
    @State var model = BusinessModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(model)
        }
    }
}
