//
//  TapGestureBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 6.01.2025.
//

import SwiftUI

struct TapGestureBootcamp: View {
    @State var isSelected: Bool = false
    var body: some View {
        VStack(spacing: 40) {
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundStyle(isSelected ? .green : .red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            }
            
            Text("Tap gesture")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            Spacer()
            
            
            

        }
        .padding(40)
    }
}

#Preview {
    TapGestureBootcamp()
}
