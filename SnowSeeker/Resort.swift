//
//  Resort.swift
//  SnowSeeker
//
//  Created by Christopher Walter on 6/14/20.
//  Copyright © 2020 Christopher Walter. All rights reserved.
//

import Foundation

struct Resort: Codable, Identifiable {
    let id: String
    let name: String
    let country: String
    let description: String
    let imageCredit: String
    let price: Int
    let size: Int
    let snowDepth: Int
    let elevation: Int
    let runs: Int
    let facilities: [String]
    
    var facilityTypes: [Facility] {
        facilities.map(Facility.init)
    }
    
    static let allResorts: [Resort] = Bundle.main.decode("resorts.json")
    static let example = allResorts[0]
    
    // we can condense those two lines above into one line as shown below
    static let example2 = (Bundle.main.decode("resorts.json") as [Resort])[0]
}
