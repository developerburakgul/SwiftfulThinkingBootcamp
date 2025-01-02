//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 2.01.2025.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = .green
    @State var title: String = "Title"
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }

        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = .blue
    @Binding var title: String
    var body: some View {
        Button {
            backgroundColor = .orange
            buttonColor = .pink
            title = "New Title"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}
#Preview {
    BindingBootcamp()
}
