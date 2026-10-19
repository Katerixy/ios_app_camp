//
//  ContentView.swift
//  UIing_more
//
//  Created by Kateryna Tserkus on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                NavigationLink(
                    destination: DetailsScreen()) {
                    Text("Details")
                }
                
                NavigationLink(
                    destination: ProfileScreen()) {Text("Profile")
                }
                
                
                NavigationLink(
                    destination: SettingsScreen()) {Text("Settings")
                }
                
            }.navigationTitle("Main View")
        }
    }
}


struct DetailsScreen: View {
    var body: some View {
        Text("Details Screen")
        .navigationTitle("Details")
        Spacer()
    }
}

struct ProfileScreen: View {
    var body: some View {
        Text("Profile Screen")
        .navigationTitle("Profiles")
        Spacer()
    }
}

struct SettingsScreen: View {
    var body: some View {
        Text("Profile Screen")
        .navigationTitle("Settings")
        Spacer()
    }
}





#Preview {
    ContentView()
}
