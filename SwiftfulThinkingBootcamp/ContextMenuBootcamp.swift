//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 4.01.2025.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = .blue
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thnking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundStyle(Color.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu {
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }
            
            Button {
                backgroundColor = .red
            } label: {
                Text("Report Post")
            }
            
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
            }

            
            
        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
