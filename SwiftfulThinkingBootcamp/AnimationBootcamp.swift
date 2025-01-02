//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 2.01.2025.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                
//                withAnimation(Animation.default) {
//                    isAnimated.toggle()
//                }
                
//                withAnimation(Animation.default.delay(2.0)) {
//                    isAnimated.toggle()
//                }
                
                withAnimation(
                    Animation
                        .default
                        .repeatCount(5, autoreverses: true)
                ) {
                    isAnimated.toggle()
                }
                
            }
            Spacer()
            RoundedRectangle(
                cornerRadius:
                    isAnimated
                    ? 50
                    : 25
            )
            .fill(isAnimated ? Color.red : Color.green
            )
            .frame(
                width: isAnimated ? 100 : 300,
                height: isAnimated ? 100 : 300
            )
            .rotationEffect(.init(degrees: isAnimated ? 360 : 0))
            .offset(y: isAnimated ? 300 : 0)
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
