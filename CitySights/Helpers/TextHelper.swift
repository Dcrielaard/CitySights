//
//  TextHelper.swift
//  CitySights
//
//  Created by Dennis Crielaard on 08/11/2023.
//

import Foundation

struct TextHelper {
    
    static func distanceAwayText(meters: Double) -> String {
        
        if meters > 1000 {
            return "\(Int(round(meters/1000))) km away"
        }
        else {
            return "\(Int(round(meters))) m away"
        }
    }
}
