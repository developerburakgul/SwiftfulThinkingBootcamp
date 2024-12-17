//
//  PaddingAndSpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 17.12.2024.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        
        //MARK: - Example -1
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(.yellow)
////            .padding()
////            .padding(.all, 10) // long version
//            .padding(.leading,20) // addtion padding
//            .background(.blue)
        
        //MARK: - Example - 2
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(.yellow)
//            .padding(.leading, 20)
        
        //MARK: - Example - 3
        
//        VStack(alignment: .leading) {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .font(.largeTitle)
//                .fontWeight(.semibold)
//            
//            
//            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
//        }
//        .background(.blue)
//        .padding()
//        .background(.red)
//        .padding(.horizontal,10)
//        .background(.green)
        
        //MARK: - Example - 4
        
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.5),
                    radius: 10,
                    x: 0,
                    y: 10
                )
        )
        .padding(.horizontal,10)
        
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
