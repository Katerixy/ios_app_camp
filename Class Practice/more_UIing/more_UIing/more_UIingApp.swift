//
//  more_UIingApp.swift
//  more_UIing
//
//  Created by Kateryna Tserkus on 8/8/25.
//

import SwiftUI

struct FastFoodItem: Identifiable {
    var id: UUID
    var itemName: String
    var price: Float
}

let foodList = [
    FastFoodItem(id: UUID(), itemName: "Hamburger", price: 1.59),
    FastFoodItem(id: UUID(), itemName: "Chezburger", price: 1.69),
    FastFoodItem(id: UUID(), itemName: "Big Mac", price: 4.99),
    FastFoodItem(id: UUID(), itemName: "Fries", price: 2.79),
    FastFoodItem(id: UUID(), itemName: "10 piece McNugets", price: 4.89)
]
