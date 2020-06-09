//
//  Weather.swift
//  Weather App
//
//  Created by Kévin Esprit on 02/06/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import UIKit

struct Weather: Identifiable {
    var id = UUID()
    var city: String
    var location: String
    var degree: String
    var clear: String
    var monuments: UIImage
    var color: UIColor
    var big: Bool
}

var weatherData = [
    Weather(city: "MUMBAI", location: "Current Location", degree: "20", clear: "clear", monuments: #imageLiteral(resourceName: "Mumbai"), color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), big: false),
    Weather(city: "NEW YORK", location: "Current Location", degree: "35", clear: "clear", monuments: #imageLiteral(resourceName: "NY"), color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), big: false),
    Weather(city: "PARIS", location: "Current Location", degree: "26", clear: "clear", monuments: #imageLiteral(resourceName: "Paris"), color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), big: false)
]
