//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 11.01.2025.
//

import SwiftUI


// list ve tabview da gözükür
struct BadgesBootcamp: View {
    var body: some View {
        
        List {
            Text("Hello World")
                .badge(2)
            
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
        }
        
        
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
////                .badge(5)
//                .badge("New")
//            
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//
//        }
            
    }
}

#Preview {
    BadgesBootcamp()
}
