//
//  ContentView.swift
//  Weather App
//
//  Created by Kévin Esprit on 02/06/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var fullScreen = false
    @State var data = weatherData
    
    var body: some View {
        
        VStack {
            HeaderView()
                .padding(.horizontal)
            GeometryReader { globalProxy in
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 15) {
                        ForEach(0..<self.data.count) { i in
                            
                            GeometryReader { cardProxy in
                                CardView(fullScreen: self.$fullScreen, weather: self.$data[i])
                                    .offset(x: self.data[i].big ? -(cardProxy.frame(in: .global).minX): 0,
                                            y: self.data[i].big ? -(cardProxy.frame(in: .global).minY): 0)
                                    .opacity(self.fullScreen ? (self.data[i].big ? 1 : 0): 1)
                                    .padding(self.data[i].big ? .init(rawValue: 0) :.horizontal)
                            }
                            .frame(height: self.data[i].big ? UIScreen.main.bounds.height : globalProxy.size.height / 3)
                        }
                    }
                }
                .animation(.spring(response: 1))
                .offset(x: self.fullScreen ? -(globalProxy.frame(in: .global).minX) : 0,
                        y: self.fullScreen ? -(globalProxy.frame(in: .global).minY) : 0)
                    .frame(minHeight: self.fullScreen ? UIScreen.main.bounds.height + globalProxy.frame(in: .global).minY: 0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
