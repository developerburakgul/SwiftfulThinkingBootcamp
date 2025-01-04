//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 4.01.2025.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        
        /// tek bir tane navigation view tut iç içe ekleme
        NavigationView {
            ScrollView {
                NavigationLink("Hello , world !", destination: MyOtherScreen())
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            .navigationTitle("All Inboxes")
            .navigationBarItems(
                // bu method depricate olacakmış
                leading: HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                },
                trailing: NavigationLink(
                    destination: MyOtherScreen(),
                    label: {
                    Image(systemName: "gear")
                            .tint(.red)
                })
            )

        }
    }
    
    
    //MARK: - Example 1 use it in body
//    NavigationView {
//        
//        ScrollView {
//            Text("Hello World")
//            Text("Hello World")
//            Text("Hello World")
//            Text("Hello World")
//        }
//        .navigationTitle("All Inboxes")
//        .navigationBarTitleDisplayMode(.automatic)
////            .navigationBarHidden(true) // bu deprecated olmuş
////            .toolbar(.hidden) // bunu kullanabilirsin navigationBarHidden yerine
//        
//    }
}

struct MyOtherScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen")
//                .toolbar(.hidden)
            
            VStack {
                Button("Back Button ") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click Here", destination: Text("3rd Screen"))
            }
            
            
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
