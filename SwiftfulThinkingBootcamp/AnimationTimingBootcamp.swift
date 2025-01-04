//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 3.01.2025.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
//            RoundedRectangle(cornerRadius: 25)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100
//                )
//                .animation(Animation.default)
//            
//            RoundedRectangle(cornerRadius: 25)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100
//                )
////                .animation(Animation.linear)
//                .animation(Animation.linear(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 25)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100
//                )
////                .animation(Animation.easeIn)
//                .animation(Animation.easeIn(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 25)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100
//                )
////                .animation(Animation.easeInOut)
//                .animation(Animation.easeInOut(duration: timing))
//            
//            
//            RoundedRectangle(cornerRadius: 25)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100
//                )
////                .animation(Animation.easeOut)
//                .animation(Animation.easeOut(duration: timing))
//
            //MARK: - En çok kullanılan buymuş
            //MARK: - Example 1
//            RoundedRectangle(cornerRadius: 25)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100
//                )
//                .animation(.spring())
            
            RoundedRectangle(cornerRadius: 25)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100
                )
                .animation(
                    .spring(
                        duration: 3.0, // toplamda ne kadar süreceği galiba timing ile aynı dedi
                        bounce: 0.5,
                        blendDuration: 1.0
                    )
                )
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
