//
//  MenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 13.01.2025.
//

import SwiftUI

struct MenuBootcamp: View {
    var body: some View {
        Menu("Click me") {
            Button("Option 1") {}
            Button("Option 2") {}
            Button("Option 3") {}
        }
    }
}

#Preview {
    MenuBootcamp()
}
