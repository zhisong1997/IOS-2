//
//  ContentView.swift
//  weather
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("Secondary")
            VStack {
                Text("KLANG")
                    .font(.largeTitle)
                Image(systemName: "cloud.sun.bolt.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .font(.system(size:100))
                Text("30°")
                    .font(.largeTitle)
                
                Spacer()
                Text("Change Day Time")
                
                
            }.padding()
            HStack{                weather(name:"THU",image:"cloud.bolt",temperature: "30")
                    .font(.title3)
                weather(name:("FRI"),image:"cloud.bolt",temperature: "30")
                    .font(.title3)
                weather(name:("SAT"),image:"cloud",temperature: "28")
                    .font(.title3)
                weather(name:("SUN"),image:"cloud.bolt", temperature: "30")
                    .font(.title3)
                weather(name:("MON"), image:"cloud.bolt", temperature: "32")
                    .font(.title3)
                weather(name:("TUE"),image:"cloud.sun.fill", temperature: "31")
                    .font(.title3)
                
            }
        }
    }
}

#Preview {
    ContentView()
}
