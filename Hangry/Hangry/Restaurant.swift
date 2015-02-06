//
//  Restaurant.swift
//  Hangry
//
//  Created by Hannah Teuteberg on 05/02/15.
//  Copyright (c) 2015 Futurice. All rights reserved.
//

import Foundation
import UIKit

class Restaurant: NSObject {
    var name: String!
    let lat: Double!
    let lon: Double!
    let street: String!
    let streetNumber: String!
    let district: String!
    let city: String!

    init(name:String, lat:Double, lon:Double, street: String, streetNumber:String, district: String, city: String) {
        super.init()
        self.name = name
        self.lat = lat
        self.lon = lon
        self.street = street
        self.streetNumber = streetNumber
        self.district = district
        self.city = city
    }
}