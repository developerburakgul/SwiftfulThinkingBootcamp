//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 31.12.2024.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    
    var body: some View {
        
        
        ZStack {
            backgroundColor.ignoresSafeArea()
            contentLayer
     
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)

            }

        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
    
    
    
}

#Preview {
    ExtractedFunctionsBootcamp()
}
