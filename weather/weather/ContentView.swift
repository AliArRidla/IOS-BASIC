//
//  ContentView.swift
//  weather
//
//  Created by Ali on 31/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue")) //full layer
            
            VStack{
                CityTextView(cityName: "Malang, ID")
                
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 16)
                //                Spacer()
                HStack(spacing:20){
                    WeatherDayView(dayOfWeek: "Tue",
                                   imageName: "wind.snow",
                                   temperature:  12)
                    WeatherDayView(dayOfWeek: "Wed",
                                   imageName: "sun.max.fill",
                                   temperature:  15)
                    WeatherDayView(dayOfWeek: "Thu",
                                   imageName: "cloud.sun.rain.fill",
                                   temperature:  13)
                    WeatherDayView(dayOfWeek: "Fri",
                                   imageName: "cloud.sun.bolt.fill",
                                   temperature:  15)
                    WeatherDayView(dayOfWeek: "Sat",
                                   imageName: "cloud.sun.fill",
                                   temperature:  14)
                }
                
                Spacer()
                Button{
                    print("tapped")
                }label: {
                    ButtonWeather(textColor: .blue, backgroundColor: .white, titleButton: "Change Day Time")
                }
                Spacer()
            }
        }
        
               
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek : String
    var imageName : String
    var temperature : Int
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 17, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}

struct BackgroundView: View {
    var topColor : Color
    var bottomColor : Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .ignoresSafeArea(.all)
    }
}

struct CityTextView : View {
    var cityName : String
    var body : some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView : View {
    var imageName : String
    var temperature : Int
    var body: some View{
        VStack(spacing:10){
            Image(imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom,40)
    }
}

