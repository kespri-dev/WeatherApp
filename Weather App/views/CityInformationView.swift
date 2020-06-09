//
//  CityInformationView.swift
//  Weather App
//
//  Created by Kévin Esprit on 03/06/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import SwiftUI

struct CityInformationView: View {
    let weather: Weather
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.weather.location)
            Text(self.weather.city)
                .font(.largeTitle)
                .bold()
            Text(self.weather.clear.capitalized)
                .font(.headline)
            Spacer()
        }
    }
}

struct CityInformationView_Previews: PreviewProvider {
    static var previews: some View {
        CityInformationView(weather: weatherData.first!)
    }
}
