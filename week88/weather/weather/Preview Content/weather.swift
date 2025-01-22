//
//  weather.swift
//  weather
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI



struct weather: View {
    var name:String
    var image:String
    var temperature:String
    
    var body: some View {
        VStack{
            Text(name)
                .font(.title)
            Image(systemName: image)
                .foregroundStyle(.tint)
            Text(temperature)
                .font(.title)
        }
    }
}

#Preview {
    weather(name:("THU"), image:"cloud.bolt", temperature: "30")
}
