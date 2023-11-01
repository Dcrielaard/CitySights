//
//  Region.swift
//  CitySights
//
//  Created by Dennis Crielaard on 01/11/2023.
//

import Foundation

struct Region: Decodable {
    var center: Coordinate?
    
}

struct Coordinate: Decodable {
    var latitude: Double?
    var longitude: Double?
}
