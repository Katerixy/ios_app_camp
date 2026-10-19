//
//  ContentView.swift
//  more_UIing
//
//  Created by Kateryna Tserkus on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(foodList) { item in
                HStack {
                    Text(item.itemName)
                    Spacer()
                    Text(String(item.price))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
