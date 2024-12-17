//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 17.12.2024.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        
        //MARK: - Example - 1
//        HStack(spacing: nil) {
//            Rectangle()
//                .frame(width: 100, height: 100)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .fill(.red)
//                .frame(width: 150, height: 100)
//
//        }
//        .background(.blue)
        
        //MARK: - Example - 2
        // Birden fazla spacer varsa eşit aralıkta boyutta olurlar
        // Spacer(minLength: nil) verirsen 0 olmaz 8 ya da 10 olur ama bu boşluk sıfırlanabilsin dersen 0 vermen gerel
//        HStack(spacing: 0) {
//            
//            Spacer()
//                .frame(height: 10)
////                .background(.orange)
//            
//            
//            Rectangle()
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
////                .background(.orange)
//            
//            Rectangle()
//                .fill(.red)
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
////                .background(.orange)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 50, height: 50)
//            
//            
//            Spacer()
//                .frame(height: 10)
////                .background(.orange)
//        }
        
        //MARK: - Example - 3
        VStack {
            HStack(spacing: .zero) {
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(.red)
                Image(systemName: "gear")
                    
            }
            .font(.title)
            .background(.yellow)
            .padding(.horizontal)
            .background(.blue)
            
            Spacer()
                .frame(width: 10)
                .background(.red)
            
            Rectangle()
                .frame(height: 60)
        }
        
    }
}

#Preview {
    SpacerBootcamp()
}
