//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 4.01.2025.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            //MARK: - Example 1
//            if showView {
//                RoundedRectangle(cornerRadius: 30)
//                    .frame(height: UIScreen.main.bounds.height * 0.5)
////                    .transition(.slide)
////                    .transition(.move(edge: .bottom))
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
////                    .animation(.spring())
//            }
            
            //MARK: - Example 2
//            if showView {
//                RoundedRectangle(cornerRadius: 30)
//                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(
//                        .asymmetric(
//                            insertion: .move(edge: .leading),
//                            removal: .move(edge: .bottom)
//                        )
//                    )
//                    .animation(.easeInOut)
//            }
            //MARK: - Example 3
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(
                        .asymmetric(
                            insertion: .move(edge: .bottom),
                            removal: AnyTransition.opacity.animation(.easeInOut)
                        )
                    )
                    .animation(.easeInOut)
            }
            
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
