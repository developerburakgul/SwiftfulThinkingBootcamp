//
//  ToolBarBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 12.01.2025.
//

import SwiftUI

struct ToolBarBootcamp: View {
    @State var text: String = ""
    @State var paths: [String] = []
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
//                Color.indigo.ignoresSafeArea()
                ScrollView {
                    TextField("Placeholder...", text: $text )
                    
                    Text("hey")
                    
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue)
                            .frame(width: 200, height: 200)
                    }
                }
            }
            .navigationTitle("Toolbar")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear")
//            )
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "gear")
                }
                ToolbarItem(placement: .keyboard) { // tamamen bumuydu hatırlamıyorum ama klaye açılınca orada üst kısıma da bu itemlardan koyabiliyoz
                    Image(systemName: "house.fill")
                }
            }
//            .navigationBarHidden(true)
//            .toolbarVisibility(.hidden, for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button {
                    paths.append("Screen1")
                } label: {
                    Text("Screen1")
                }
                Button {
                    paths.append("Screen2")
                } label: {
                    Text("Screen2")
                }

            }
            .navigationDestination(for: String.self) { value in
                Text("New Screen \(value)")
            }
            
        }
        
    }
}

#Preview {
    ToolBarBootcamp()
}
