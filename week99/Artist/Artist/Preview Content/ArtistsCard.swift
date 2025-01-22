//
//  ArtistsCard.swift
//  Artist
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

struct ArtistsCard: View {
    var name:String
    var color:String
    var image:String
    var website:String
    var body: some View {
        
        VStack{
            ZStack{
                Color("naruto")
                    .cornerRadius(20)
                HStack{
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode:.fit)
                    Spacer()
                    
                }
                HStack{
                    Text(name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.all)
                    Spacer()
                    
                    VStack{
                        Text("\n\n\n\n")
                        Button(action: {
                            if let url = URL(string: "https://naruto-official.com/en") {
                                UIApplication.shared.open(url)
                            }
                        }){
                            HStack{
                                Text("View")
                                Image(systemName:"chevron.right")
                                
                            }.padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                        }
                        
                    }
                    
                    
                }
            }.frame(height:200)
                .padding()
        }
    }
}

#Preview {
    ArtistsCard(name:("naruto"), color:"naruto" , image:"Subject", website: "https://naruto-official.com/en")
   
}
