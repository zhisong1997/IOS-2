//
//  FoodView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct FoodView: View {
    @Query(filter: #Predicate<MenuItem> { item in
        item.type == "Food"
    }, sort: \MenuItem.name) var foodItems: [MenuItem]  // Renamed to 'foodItems'
    
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        List {
            ForEach(foodItems) { item in  // Changed 'drinkItems' to 'foodItems'
                MenuItemView(item: item)
            }
        }
        .onAppear {
            if foodItems.isEmpty {
                preloadMenuItems()  // Renamed the preload method for food items
            }
        }
    }

    private func preloadMenuItems() {
        // Changed sample data to represent food items
        let sampleFood: [(name: String, price: Double)] = [
            ("Beef Coney", 9.0),
            ("Chicken Coney", 11.0),
            ("Spicy Chicken", 12.0),
            ("Chicken", 10.9),
            ("Mozza Burger", 9.8),
            ("Chicken Sandwich", 9.5),
            ("Fish Sandwich", 8.0)
        ]

        for food in sampleFood {  // Renamed to 'food' to match new naming
            let newItem = MenuItem(name: food.name, type: "Food", price: food.price)
            modelContext.insert(newItem)
        }
        
        try? modelContext.save()
    }
}

#Preview {
    FoodView()  // Changed to preview FoodView instead of DrinkView
        .modelContainer(for: MenuItem.self, inMemory: true)
}
