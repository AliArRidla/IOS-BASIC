//
//  ButtonWeather.swift
//  weather
//
//  Created by Ali on 01/01/21.
//

import SwiftUI
struct ButtonWeather : View {
    var textColor : Color
    var backgroundColor : Color
    var titleButton : String
    var body: some View{
        Text(titleButton)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

