//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 2.01.2025.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            
            Button {
                isLoading.toggle()
            } label: {
                Text("IS LOADING : \(isLoading.description)")
            }

            if isLoading {
                ProgressView()
            }
            
//            Button {
//                showCircle.toggle()
//            } label: {
//                Text("Circle Label \(showCircle.description)")
//            }
//            
//            Button("Rectangle Button : \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//            
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100, alignment: .center)
//            } else if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100, alignment: .center)
//            } else {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 200, height: 200, alignment: .center)
//            }
//            
//            Spacer()


        }
    }
}

#Preview {
    ConditionalBootcamp()
}
