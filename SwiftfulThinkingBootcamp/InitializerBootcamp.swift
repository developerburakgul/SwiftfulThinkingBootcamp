//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 17.12.2024.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let text: String
    
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        switch fruit {
        case .apple:
            self.text = "Apple"
            self.backgroundColor = .red
        case .orange:
            self.text = "Orange"
            self.backgroundColor = .orange
        }
    }
    
    
    enum Fruit {
        case apple, orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text("\(text)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        InitializerBootcamp(count: 3, fruit: .apple)
        InitializerBootcamp(count: 1, fruit: .orange)
    }
}
