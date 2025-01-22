//
//  ContentView.swift
//  Artist
//
//  Created by labuser on 08/01/2025.
//



import SwiftUI

struct ContentView: View {
    var body: some View {
        
            VStack{
                HStack{
                    Spacer()
                    Image(systemName: "bell.badge.fill")
                        .font(.largeTitle)
                    Image(systemName: "person.fill")
                        .font(.largeTitle)
                   
                }
                HStack{
                    Text("Store")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding()
                    Spacer()
                }
                ScrollView{
                    ArtistsCard(name:("naruto"), color:"naruto" , image:"Subject")
                    ArtistsCard(name:(" sasuke"), color:"naruto" , image:"Subject 2")
                    ArtistsCard(name:("kakashi"), color:"naruto" , image:"Subject 3")
                    ArtistsCard(name:("sakura"), color:"naruto" , image:"Subject 4")
                }
                
            
            }.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
