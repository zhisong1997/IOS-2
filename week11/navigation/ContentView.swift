//
//  ContentView.swift
//  navigation
//
//  Created by labuser on 22/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    @State private var isSheetPresented = false
    let Asia = ["Seremban", "Kuala Lumpur", "Tokyo"]
    let Europe = ["London", "New York", "Paris"]
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Asia")) {
                    ForEach(Asia, id: \.self) { city in
                        NavigationLink(destination: Text("Item detail: \(city)")) {
                            Text(city)
                        }
                    }
                }
                Section(header: Text("Europe")) {
                    ForEach(Europe, id: \.self) { city in
                        NavigationLink(destination: Text("Item detail: \(city)")) {
                            Text(city)
                        }
                    }
                }
            }
            .navigationTitle("City")
            
            .toolbar{
                ToolbarItem(placement:.navigationBarTrailing){
                    Button(action:{
                        
                    }){
                        Text("!")
                            .font(.system(size:30))
                    }
                }
            }
            .sheet(isPresented:$isSheetPresented){
                VStack{
                    Text("this app was created by song")
                        .presentationDetents([.height(300),.large])
                        .font(.headline)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
