//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 31.12.2024.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var mytitle: String = "My Title"
    @State var count: Int = 0
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(mytitle)
                    .font(.title)
                
                Text("Count : \(count) ")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                        mytitle = "Button 1 was pressed"
                        count = count + 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .purple
                        mytitle = "Button 2 was pressed"
                        count = count - 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
