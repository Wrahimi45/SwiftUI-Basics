//
//  ContentView.swift
//  WeatherApp-SwiftUI
//
//  Created by Wahidullah Rahimi on 3/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
//            Color(.blue)
//                .edgesIgnoringSafeArea(.all) // ignore safe area
            BachgroundView(topColor: .blue, bottomColor: Color("lightblue"))
            
            // creating the vStack on top of our zStack
            VStack{
                CityTextView(cityName: "Pullman, WA")
                VStack(spacing:-9){
                    MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 78)

                }
                .padding(.bottom, 45)
                
                
                HStack(spacing: 8){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temparature: 76)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.sun.rain.fill", temparature: 70)
                    WeatherDayView(dayOfWeek: "THU", imageName: "cloud.sun.rain.fill", temparature: 90)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.fill", temparature: 70)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "wind", temparature: 78)
                    WeatherDayView(dayOfWeek: "SUN", imageName: "cloud.sun.fill", temparature: 76)
                    WeatherDayView(dayOfWeek: "MON", imageName: "snow", temparature: 76)
                }
                Spacer()
                Button{
                    // this section is the action, what the button does
                    print("Tapped")
                } label: {
                    // what the button looks like
                    WeatherButtonText(title: "Change Day Time", textColor: .blue, backGroundColor: .white)
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
    var dayOfWeek: String
    var imageName: String
    var temparature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temparature)°")
                .font(.system(size: 24, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct BachgroundView: View {
    var topColor:Color
    var bottomColor: Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View{
    
    var cityName: String
    
    var body: some View{
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View{
    
    var imageName: String
    var temperature:Int
    
    var body: some View{
        Image(systemName: imageName)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
        Text("\(temperature)°")
            .font(.system(size: 70, weight: .medium))
            .foregroundColor(.white)
    }
}


