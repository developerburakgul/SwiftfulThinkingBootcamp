//
//  SafeAreaInsetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 12.01.2025.
//

import SwiftUI

// tam anlamadım bunu

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<20) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
//            .safeAreaInset(edge: .bottom, alignment: .center) {
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//            }
//            .safeAreaInset(edge: .bottom, alignment: .trailing) {
//                Text("Hi")
//                    .padding()
//                    .background(Color.yellow)
//                    .clipShape(Circle())
//                    .padding()
//            }
//            .safeAreaInset(edge: .top, alignment: .trailing) {
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .padding()
//                    .background(Color.yellow.ignoresSafeArea(edges: .top))
//            }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
