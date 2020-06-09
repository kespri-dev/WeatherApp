//
//  CardView.swift
//  Weather App
//
//  Created by Kévin Esprit on 02/06/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    @Binding var fullScreen: Bool
    @Binding var weather: Weather
    
    var body: some View {
        ZStack(alignment: .bottom) {
            if fullScreen {
                Image(uiImage: self.weather.monuments)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(x: 1.5, y: 1.5, anchor: .bottomLeading)
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Spacer(minLength: 100)
                        DegresView(weather: self.weather, fullScreen: self.fullScreen)
                        Spacer()
                        CityInformationView(weather: self.weather)
                    }
                    Spacer()
                }
                .padding()
            } else {
                HStack {
                    CityInformationView(weather: self.weather)
                    Spacer(minLength: 0)
                }
                .padding()
                HStack {
                    Spacer()
                    VStack {
                        Spacer()
                        DegresView(weather: self.weather, fullScreen: self.fullScreen)
                    }
                }
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color(self.weather.color))
        .cornerRadius(20)
        .animation(.easeInOut(duration: 0.3))
        .onTapGesture {
            self.fullScreen.toggle()
            self.weather.big.toggle()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(fullScreen: .constant(true), weather: .constant(weatherData[1]))
    }
}
