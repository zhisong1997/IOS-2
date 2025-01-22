//
//  ContentView.swift
//  input validation
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    var body: some View {
        VStack {
            TextField("Requiment", text:$name)
                .padding()
                .keyboardType(.decimalPad)
                .background(Color.white)
                .cornerRadius(10)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            if name.count >= 5{
                Text("valid")
                    .foregroundColor(.green)
            }
            else{
                if name.count != 0{
                    Text("too short")
                        .foregroundColor(.red)
                }
            }
            
        }
      
    }
}

#Preview {
    ContentView()
}
