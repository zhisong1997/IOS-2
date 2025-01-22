//
//  ContentView.swift
//  Dynamic
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State var status = false
    var body: some View {
        VStack {
            HStack{
                Toggle("",isOn:$status)
                    .frame(width: 0)
            }
            
            if isRed == true{
                
            }
        }
      
    }
}

#Preview {
    ContentView()
}
