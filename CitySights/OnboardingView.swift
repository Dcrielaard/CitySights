//
//  Onboarding.swift
//  CitySights
//
//  Created by Dennis Crielaard on 29/11/2023.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            OnboadingViewDetails(bgColor: Color(red: 111/255, green: 154/255, blue: 189/255),
                                 headline: "Welcome to City Sights",
                                 subHeadline: "City Sights helps you find the best of the city!",
                                 buttonAction: { print("first") }
            )
            .ignoresSafeArea()
            
            OnboadingViewDetails(bgColor: Color(red: 139/255, green: 166/255, blue: 65/255),
                                 headline: "Discover your city",
                                 subHeadline: "We'll show you the best restaurants, venues, and more, based on your location",
                                 buttonAction: { print("Hello") }
            )
            .ignoresSafeArea()
        }
        .tabViewStyle(.page)
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingView()
        .environment(BusinessModel())
}

