//
//  WeatherButton.swift
//  WeatherApp-SwiftUI
//
//  Created by Wahidullah Rahimi on 3/5/23.
//
import SwiftUI
struct WeatherButtonText: View{
    var title: String
    var textColor: Color
    var backGroundColor: Color
    var body: some View{
        Text(title)
            .frame(width: 280, height: 50)
            .background(backGroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
