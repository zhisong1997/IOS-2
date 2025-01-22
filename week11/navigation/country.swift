//
//  country.swift
//  navigation
//
//  Created by labuser on 22/01/2025.
//

import SwiftUI

struct countryView: View {
    var search: [String]
    var title: String
    var name = ["J"]
    var body: some View {
        Section(header: Text(title)) {
            ForEach(search.filter { name.contains($0) }, id: \.self) { city in
                NavigationLink {
                    weatherView(name: city)
                } label: {
                    Text(city)
                }
            }
        }
        
    }
}

#Preview {
    countryView(search: ["j"], title: "zhi song", name: ["j"])
}
