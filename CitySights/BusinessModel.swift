//
//  BusinessModel.swift
//  CitySights
//
//  Created by Dennis Crielaard on 24/11/2023.
//

import Foundation

import SwiftUI

@Observable
class BusinessModel {
    
    var businesses = [Business]()
    var query: String = ""
    var selectedBusiness: Business?
    
    var service = DataService()
    
    func getBusinesses() {
        
        Task {
            businesses = await service.businessSearch()
        }
        
    }
    
}
