//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 6.01.2025.
//

import SwiftUI

struct DarkModeBootcamp: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This text is PRİMARY")
                        .foregroundStyle(Color.primary)
                    Text("This text is SECONDARY")
                        .foregroundStyle(Color.secondary)
                    Text("This text is BLACK")
                        .foregroundStyle(Color.black)
                    Text("This text is WHITE")
                        .foregroundStyle(Color.white)
                    Text("This text is RED")
                        .foregroundStyle(Color.red)
                    Text("This text is globally adaptive")
                        .foregroundStyle(Color("AdaptiveColor"))
                    
                    Text("This color is locally adaptive")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("DarkMode Bootcamp")
        }
    }
}

#Preview {
    DarkModeBootcamp()
}
