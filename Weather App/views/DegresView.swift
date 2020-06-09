//
//  DegresView.swift
//  Weather App
//
//  Created by Kévin Esprit on 03/06/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import SwiftUI

struct DegresView: View {
    
    let weather: Weather
    let fullScreen: Bool
    
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            Text(self.weather.degree)
                .font(.system(size: fullScreen ? 100 : 60))
            VStack(alignment: .leading) {
                Text("°")
                    .font(.largeTitle)
                Text("Celcius")
                    .bold()
            }
        }
    }
}

struct DegresView_Previews: PreviewProvider {
    static var previews: some View {
        DegresView(weather: weatherData.first!, fullScreen: true)
    }
}
