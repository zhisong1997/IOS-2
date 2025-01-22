//
//  day time.swift
//  navigation
//
//  Created by labuser on 22/01/2025.
//


import SwiftUI

struct Day_Time_Weather: View {
    var day: String
    var weather: String
    var celcius: String
    
    var body: some View {
        VStack {
            Text(day)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.bottom, 5)
            Image(systemName: weather)
                .resizable()
                .frame(width: 50, height: 50) // Adjust size as needed
                .foregroundColor(.blue) // Change color if desired
                .padding(.bottom, 5)
            Text(celcius)
                .font(.title3)
                .fontWeight(.bold)
                .padding(.top, 5)
        }
        .padding() // Add padding around the VStack
        .background(Color(.systemGray6)) // Background color
        .cornerRadius(10) // Rounded corners
        .shadow(radius: 5) // Drop shadow for depth
    }
}

#Preview {
    Day_Time_Weather(day: "Tue", weather: "cloud.sun.fill", celcius: "28°")
}
