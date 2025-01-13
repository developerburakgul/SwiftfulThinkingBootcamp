//
//  GroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 12.01.2025.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello world")
            Text("Hello world")
            Group {
                Text("Hello world")
                Text("Hello world")
            }
            .font(.caption)
            .foregroundColor(.green)
            
        }
        .foregroundColor(.red)
        .font(.caption)
    }
}

#Preview {
    GroupBootcamp()
}
