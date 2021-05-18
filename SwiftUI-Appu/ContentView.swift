//
//  ContentView.swift
//  SwiftUI-Appu
//
//  Created by Mohammed Audhil S on 18/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var isNight = false
    
    var body: some View {
        ZStack {
            BackGroundView(isNightBool: $isNight)
            
            VStack{
                CityTextView(title: "Cupertino, India")
                CurrentWeatherStatusView(
                    imageName: isNight ? "cloud.moon.fill" : "cloud.sun.fill",
                    temperature: "76°")
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "cloud.moon.bolt.fill",
                                   temperature: 73)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "wind.snow",
                                   temperature: 70)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.moon.rain.fill",
                                   temperature: 78)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.sleet.fill",
                                   temperature: 64)
                }
                Spacer()
                Button{
                    isNight.toggle()
                } label:{
                    WeatherButton(title: "Change Day Time", bgColor: Color.white, fgColor: .blue)
                }
                Spacer()
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            VStack(spacing:10){
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
}

struct BackGroundView: View {
    
    @Binding
    var isNightBool: Bool
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors:[isNightBool ? .black: .blue,
                                       isNightBool ? .gray: Color("lightBlue")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var title:String
    var body: some View {
        Text(title)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct CurrentWeatherStatusView: View {
    
    var imageName: String
    var temperature: String
    
    var body: some View {
        VStack(spacing:10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text(temperature)
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
            
        }
        .padding(.bottom, 40)
    }
}
