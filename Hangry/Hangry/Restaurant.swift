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

    init(name:String, lat:Double, lon:Double) {
        super.init()
        self.name = name
        self.lat = lat
        self.lon = lon
    }
}