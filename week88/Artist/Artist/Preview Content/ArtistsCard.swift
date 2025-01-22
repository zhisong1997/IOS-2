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
    var body: some View {

        VStack{
            ZStack{
                Color("naruto")
                    .cornerRadius(20)
                HStack{
                    Text(name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.all)
                    Spacer()
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode:.fit)
                    Spacer()
                    VStack{
                        Text("\n\n\n\n")
                        Text("view")
                            .background(.white)
                            .padding(.all)
                    }
                    
                }
   
                
            }
        }.frame(height:200)
            .padding()
    }
}

#Preview {
    ArtistsCard(name:("naruto"), color:"naruto" , image:"Subject")
   
}
