//
//  Weather.swift
//  WeatherForecast
//
//  Created by Leo Wirasanto on 11/02/20.
//  Copyright © 2020 Leo Wirasanto. All rights reserved.
//

import Foundation

struct Weather: Identifiable {
    var id = UUID()
    var image: String
    var temp: Int
    var city: String
}
