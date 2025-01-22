//
//  ContentView.swift
//  FavouriteArtist
//
//  Created by labuser on 18/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
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
                
                ZStack{
                    Color("naruto")
                    .cornerRadius(20)
                    HStack{
                        Text("\n\n\nNaruto")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Image("Subject1")
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                        Spacer()
                    }
                }
                
                ZStack{
                        Color("sasuke")
                        .cornerRadius(20)
                    HStack{
                        Text("\n\n\nSasuke")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                        Image("Subject 2")
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                        Spacer()
                    }
                }
                
                ZStack{
                        Color("sakura")
                        .cornerRadius(20)
                    HStack{
                        Text("\n\n\nSakura")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                        Image("Subject 4")
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                        Spacer()
                    }
                }
                
                ZStack{
                    Color("kakashi")
                        .cornerRadius(20)
                    HStack{
                        Text("\n\n\nKakashi")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Image("Subject 3")
                        
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all )
                        Spacer()
                        
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
