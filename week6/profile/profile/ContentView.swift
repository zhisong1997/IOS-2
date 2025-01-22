//
//  ContentView.swift
//  profile
//
//  Created by labuser on 17/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("wall")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image("tanzhisong")
                    .resizable()
                    .scaledToFill()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                           Circle().stroke(Color.white, lineWidth: 4)
                       )
                    .frame(width: 180.0, height: 180.0)

                    
                Text("Tan zhi song")
                    .foregroundColor(Color("Secondary") )
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("ios Developer")
                    .font(.title)
                Text("hi, I have three years of experience developing iOS apps and a passion for building solutions.")
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                HStack{
                  
                    Image("facebook")
                        .resizable()
                        .scaledToFill()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                    
                    Image("instagram")
                        .resizable()
                        .scaledToFill()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                    Image("youtube")
                        .resizable()
                        .scaledToFill()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                    Image("linkedin")
                        .resizable()
                        .scaledToFill()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
               
                    
                }
                .padding()
                
            }
        }
    }
}

#Preview {
    ContentView()
}
