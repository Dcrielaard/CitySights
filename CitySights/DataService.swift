//
//  DataService.swift
//  CitySights
//
//  Created by Dennis Crielaard on 28/10/2023.
//

import Foundation

struct DataService {
    
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func businessSearch() async -> [Business] {
        
        // Check if api key exists
        guard apiKey != nil else {
            return [Business]()
        }
        
        // 1. Create url
        if let url = URL(string: "https://api.yelp.com/v3/businesses/search?latitude=52.001392&longitude=4.689089&categories=restaurants&limit=10") {
            
            
            // 2. Create request
            var request = URLRequest(url: url)
            request.addValue("Bearer \(apiKey!)", forHTTPHeaderField: "Authorization")
            request.addValue("application/json", forHTTPHeaderField: "accept")
        
        
            // 3. Send request
            do {
                let (data, response) = try await URLSession.shared.data(for: request)
                
                // 4. Parse the JSON
                let decoder = JSONDecoder()
                let result = try decoder.decode(BusinessSearch.self, from: data)
                return result.businesses
            }
            catch {
                print(error)
            }
        }
        
        return [Business]()
    }
    
    
    
}
