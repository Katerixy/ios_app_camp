//
//  Demoer.swift
//  UIing
//
//  Created by Kateryna Tserkus on 8/8/25.
//

import SwiftUI

struct Demoer: View {
    var body: some View {
        List {
            Section {
                Text("iPhone Language")
            }
            
            Section{
                Text("English")
                Text("Spanish")
            } header: {
                Text("Preferred languages")
            } footer: {
                Text("Apps and websites will use the first language in this list that they support.")
            }
            
            Section{
                Text("Region")
                Text("Calender")
                Text("Temperature Unit")
            }
        }
        .navigationTitle("Language & Regions")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    Demoer()
}
