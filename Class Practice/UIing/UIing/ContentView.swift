//
//  ContentView.swift
//  UIing
//
//  Created by Kateryna Tserkus on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("star")
            Button(action: signIn) {
                Text("Button 1")
            }
            Button("Button 2") {
                print("Goodbye")
            }
            Button("Text", systemImage: "arrow.up", action: signIn)
            
        }
    }
}
func signIn() {
    print("Hello")
}


#Preview {
    ContentView()
}
