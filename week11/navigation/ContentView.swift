//
//  ContentView.swift
//  searchOption
//
//  Created by labuser on 22/01/2025.
//

import SwiftUI


struct ContentView: View {
    let asia = ["Seremban", "Kuala Lumpur", "Tokyo"]
    let europe = ["London", "New York", "Paris"]
    @State var searchText = ""
    @State var show = false
    var searchResults: [String] {
        if searchText.isEmpty {
            return asia + europe
        } else {
            return (asia + europe).filter { $0.contains(searchText)}
        }
    }
    var body: some View {
        NavigationStack {
            List {
                countryView(search: searchResults, title: "Asia", name: asia)
                countryView(search: searchResults, title: "Europe", name: europe)
            }
            .navigationTitle("Cities")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        show.toggle()
                    }) {
                        Image(systemName : "info.circle")
                            .foregroundColor(.blue)
                    }
                }
            }
            .searchable(text: $searchText)
            .sheet(isPresented: $show) {
                Text("This app was created by song.")
                    .presentationDetents([.height(200)])
            }
        }.tint(.white)
    }
}

#Preview {
    ContentView()
}
