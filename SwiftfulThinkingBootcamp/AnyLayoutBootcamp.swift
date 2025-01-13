//
//  AnyLayoutBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 14.01.2025.
//

import SwiftUI

struct AnyLayoutBootcamp: View {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    var body: some View {
        VStack(spacing: 16) {
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Verticak: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout =
            horizontalSizeClass == .compact
            ? AnyLayout( VStackLayout())
            : AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
        }
        
    }
}

#Preview {
    AnyLayoutBootcamp()
}
