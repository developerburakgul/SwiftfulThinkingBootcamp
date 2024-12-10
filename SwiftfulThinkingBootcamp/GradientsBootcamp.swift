//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 10.12.2024.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
//            .fill(Color.red)
        // There are 3 gradient :
        
        
        // 1 - LinearGradient
//            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [.white, .blue]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom
//                )
//            )
        
        // 2- RadialGradient
//            .fill(
//                RadialGradient(
//                    colors: [.yellow, .blue],
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 200
//                )
//            )
        
        
        // 3 - AngularGradients
            .fill(
                 AngularGradient(
                    colors: [.red, .blue],
                    center: .center,
                    angle: .degrees(180 + 45) // keskin olan çizgi saat yönünde 0 dereceden başlar.
                )
            )
        
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
