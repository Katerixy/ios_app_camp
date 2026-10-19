//
//  CircleImage.swift
//  TurtleRock
//
//  Created by Kateryna Tserkus on 8/8/25.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: 4)
                    .shadow(radius:7)
                )
    }
}

#Preview {
    CircleImage()
}
