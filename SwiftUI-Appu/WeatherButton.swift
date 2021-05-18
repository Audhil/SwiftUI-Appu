//
//  WeatherButton.swift
//  SwiftUI-Appu
//
//  Created by Mohammed Audhil S on 04/05/21.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var bgColor: Color
    var fgColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(bgColor)
            .foregroundColor(fgColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
