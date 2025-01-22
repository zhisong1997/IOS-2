//
//  weater.swift
//  navigation
//
//  Created by labuser on 22/01/2025.
//

import SwiftUI

struct weatherView: View {
    @State var dark = false
    var name: String
    var body: some View {
        ZStack {
            LinearGradient(gradient : Gradient (
                colors : dark ? [.black, .gray] : [.blue, .cyan, .white]),
                startPoint : .top,
                endPoint : .bottom
            )
            VStack {
                Text(name)
                    .font(.system(size : 40))
                    .foregroundColor(dark ? .white : .black)
                Text("\n\n")
                if name == "Seremban" {
                    Image(systemName : "cloud.sun.fill")
                        .font(.system(size : 100))
                        .foregroundStyle(Color.white, Color.yellow)
                    Text("\n")
                    Text("28°")
                        .font(.system(size : 60))
                        .foregroundColor(dark ? .white : .black)
                        .fontWeight(.bold)
                } else if name == "Kuala Lumpur" {
                    Image(systemName : "cloud.sun")
                        .font(.system(size : 100))
                        .foregroundStyle(Color.white, Color.yellow)
                    Text("\n")
                    Text("32°")
                        .font(.system(size : 60))
                        .foregroundColor(dark ? .white : .black)
                        .fontWeight(.bold)
                } else if name == "Tokyo" {
                    Image(systemName : "sun.min")
                        .font(.system(size : 100))
                        .foregroundStyle(Color.white, Color.yellow)
                    Text("\n")
                    Text("17°")
                        .font(.system(size : 60))
                        .foregroundColor(dark ? .white : .black)
                        .fontWeight(.bold)
                } else if name == "London" {
                    Image(systemName : "cloud.rainbow.crop")
                        .font(.system(size : 100))
                        .foregroundStyle(Color.white, Color.yellow)
                    Text("\n")
                    Text("15°")
                        .font(.system(size : 60))
                        .foregroundColor(dark ? .white : .black)
                        .fontWeight(.bold)
                } else if name == "New York" {
                    Image(systemName : "cloud.rain")
                        .font(.system(size : 100))
                        .foregroundStyle(Color.white, Color.yellow)
                    Text("\n")
                    Text("10°")
                        .font(.system(size : 60))
                        .foregroundColor(dark ? .white : .black)
                        .fontWeight(.bold)
                } else if name == "Paris" {
                    Image(systemName : "cloud.rain.fill")
                        .font(.system(size : 100))
                        .foregroundStyle(Color.white, Color.yellow)
                    Text("\n")
                    Text("20°")
                        .font(.system(size : 60))
                        .foregroundColor(dark ? .white : .black)
                        .fontWeight(.bold)
                }
                Text("\n")
                HStack {
                    if name == "Seremban" {
                        Day_Time_Weather(day: "Thu", weather: "cloud.sun.fill", celcius: "31°")
                        Day_Time_Weather(day: "Fri", weather: "cloud.sun", celcius: "30°")
                        Day_Time_Weather(day: "Sat", weather: "sun.max.fill", celcius: "33°")
                        Day_Time_Weather(day: "Sun", weather: "sun.min", celcius: "32°")
                        Day_Time_Weather(day: "Mon", weather: "cloud.rainbow.crop", celcius: "26°")
                    } else if name == "Kuala Lumpur" {
                        Day_Time_Weather(day: "Thu", weather: "cloud.sun.fill", celcius: "32°")
                        Day_Time_Weather(day: "Fri", weather: "cloud.sun", celcius: "30°")
                        Day_Time_Weather(day: "Sat", weather: "sun.max.fill", celcius: "33°")
                        Day_Time_Weather(day: "Sun", weather: "sun.min", celcius: "31°")
                        Day_Time_Weather(day: "Mon", weather: "cloud.sun.fill", celcius: "32°")
                    } else if name == "Tokyo" {
                        Day_Time_Weather(day: "Thu", weather: "sun.max.fill", celcius: "32°")
                        Day_Time_Weather(day: "Fri", weather: "cloud.sun", celcius: "30°")
                        Day_Time_Weather(day: "Sat", weather: "cloud.sun.fill", celcius: "28°")
                        Day_Time_Weather(day: "Sun", weather: "sun.min", celcius: "33°")
                        Day_Time_Weather(day: "Mon", weather: "cloud.sun.fill", celcius: "31°")
                    } else if name == "London" {
                        Day_Time_Weather(day: "Thu", weather: "cloud.rain.fill", celcius: "18°")
                        Day_Time_Weather(day: "Fri", weather: "cloud.rain", celcius: "17°")
                        Day_Time_Weather(day: "Sat", weather: "cloud.fill", celcius: "20°")
                        Day_Time_Weather(day: "Sun", weather: "cloud.sun.fill", celcius: "19°")
                        Day_Time_Weather(day: "Mon", weather: "cloud.snow.fill", celcius: "15°")
                    } else if name == "New York" {
                        Day_Time_Weather(day: "Thu", weather: "cloud.sun.fill", celcius: "25°")
                        Day_Time_Weather(day: "Fri", weather: "cloud.sun", celcius: "23°")
                        Day_Time_Weather(day: "Sat", weather: "cloud.sun.fill", celcius: "22°")
                        Day_Time_Weather(day: "Sun", weather: "sun.max.fill", celcius: "28°")
                        Day_Time_Weather(day: "Mon", weather: "cloud.sun.fill", celcius: "24°")
                    } else if name == "Paris" {
                        Day_Time_Weather(day: "Thu", weather: "cloud.sun.fill", celcius: "22°")
                        Day_Time_Weather(day: "Fri", weather: "cloud.sun", celcius: "24°")
                        Day_Time_Weather(day: "Sat", weather: "sun.max.fill", celcius: "27°")
                        Day_Time_Weather(day: "Sun", weather: "sun.min", celcius: "25°")
                        Day_Time_Weather(day: "Mon", weather: "cloud.sun.fill", celcius: "23°")
                    }
                }.foregroundColor(dark ? .white : .black)
                Text("\n\n\n\n\n")
                Button(action: {
                    withAnimation {
                        dark.toggle()
                    }
                }) {
                    Text("Change Day Time")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(dark ? .white : .black)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 5)
                        .background(dark ? .yellow : .green)
                        .cornerRadius(10)
                        .padding()
                }
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    weatherView(name: "Seremban")
}
