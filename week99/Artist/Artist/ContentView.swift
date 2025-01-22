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
                    ArtistsCard(name:("naruto"), color:"naruto" , image:"Subject", website: "https://naruto-official.com/en")
                    
                    ArtistsCard(name:(" sasuke"), color:"naruto" , image:"Subject 2", website: "https://naruto.fandom.com/wiki/Naruto_Uzumaki")
                                
                                ArtistsCard(name:("kakashi"), color:"naruto" , image:"Subject 3", website:"https://boruto.fandom.com/wiki/Naruto_Uzumaki")
                                            
                                            ArtistsCard(name:("sakura"), color:"naruto" , image:"Subject 4", website: "https://boruto.fandom.com/wiki/Naruto_Uzumaki")
                }
                
            
            }.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
