//
//  HeaderView.swift
//  Weather App
//
//  Created by Kévin Esprit on 03/06/2020.
//  Copyright © 2020 Kesprit. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Button(action: {
                
            }) {
                Image(systemName: "text.alignleft")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.primary)
            }
            Spacer()
            Text("Today's Weather")
                .font(.system(size: 50))
                .bold()
                .lineLimit(2)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
