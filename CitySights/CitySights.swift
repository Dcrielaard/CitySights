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
    @AppStorage("onboarding") var needsOnboarding = true
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(model)
                .fullScreenCover(isPresented: $needsOnboarding) {
                    //TODO on dismiss
                    needsOnboarding = false
                } content: {
                    OnboardingView()
                }
                .onAppear {
                    // If no onboarding is needed, still get location
                    if needsOnboarding == false {
                        model.getUserLocation()
                    }
                }
        }
    }
}
