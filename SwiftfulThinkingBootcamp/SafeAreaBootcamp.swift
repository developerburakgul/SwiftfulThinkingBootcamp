//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 30.12.2024.
//

import SwiftUI

struct SafeAreaBootcamp: View {
//    var body: some View {
//        Text("Hello world")
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red,ignoresSafeAreaEdges: []) // bu şekilde safeArea ya dokunmamasını sğalarız. ignoresSafeArea kısmını yazmazsak .all olarak algılar. Bu method değişmis sonradan. https://www.reddit.com/r/SwiftUI/comments/1bh3bak/view_doesnt_respect_safe_area/
//        
//    }
    
    
//    var body: some View {
//        ZStack {
//            
//            // background
//            Color.blue
//                .ignoresSafeArea()
//            
//            // foregorund
//            
//            
//            Text("Burak")
//            .frame(width: .infinity)
//            .background(
//                Color.pink
//                    .ignoresSafeArea(edges: .all)
//            )
//        }
//    }
    
    //MARK: - Example - 2
//    var body: some View {
//        ZStack {
//            Color.pink
//                .ignoresSafeArea()
//            
//            Color.green
//            
//            VStack {
//                Text("Burak")
//                Spacer()
//            }
//            .frame(width: .infinity, height: .infinity, alignment: .center)
//            .background(.yellow, ignoresSafeAreaEdges: [])
//        }
//        
//    }
    
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
//        .background(Color.red, ignoresSafeAreaEdges: [])
        .background(Color.red)
    }
}

#Preview {
    SafeAreaBootcamp()
}
