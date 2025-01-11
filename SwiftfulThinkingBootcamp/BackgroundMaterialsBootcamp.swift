//
//  BackgroundMaterialsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 11.01.2025.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                    
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
//            .background(Color.black.opacity(0.5))
            .background(
//                .thinMaterial
                .ultraThinMaterial
            )
            .cornerRadius(20)
        }
        .ignoresSafeArea()
        .background(
            Image("hackaton")
        )
    }
        
}

#Preview {
    BackgroundMaterialsBootcamp()
}
