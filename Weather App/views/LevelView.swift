//
//  LevelView.swift
//  Weather App
//
//  Created by Kévin Esprit on 06/06/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import SwiftUI

struct LevelView: View {
    
    @State var height: CGFloat = 100
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.gray.frame(width: 60, height: 400)
            Color.blue.frame(width: 60, height: height)
                .gesture(
                    DragGesture()
                        .onChanged({
                            self.height = self.calculateHeight(startLocation: $0.startLocation, currentLocation: $0.location)
                            
                        })
            )
        }
        .clipShape(Capsule())
    }
    
    private func calculateHeight(startLocation: CGPoint, currentLocation: CGPoint) -> CGFloat {
        
        let height: CGFloat
        if startLocation.y > currentLocation.y {
            height = self.height + (startLocation.y - currentLocation.y)
        } else {
            height = self.height - (currentLocation.y - startLocation.y)
        }
        
        switch Int(height) {
        case 0 ... 400:
            return height
        case ..<0: return 0
        default : return 400
        }
    }
}

struct LevelView_Previews: PreviewProvider {
    static var previews: some View {
        LevelView()
    }
}
