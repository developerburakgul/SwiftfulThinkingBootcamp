//
//  OnAppearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 6.01.2025.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Start Text"
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    myText = "This is the new text"
                }
                
            })
            .onDisappear(perform: {
                myText = "Ending Text"
            })
            .navigationTitle("On Appear Bootcamp")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
