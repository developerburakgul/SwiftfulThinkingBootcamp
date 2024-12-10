//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 10.12.2024.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
//            .fill(Color.red) // Color -> SwiftUI
            .fill(
                Color(
                    UIColor.label
                ) // UIKit Color
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: .red.opacity(0.3), radius: 10, x: 0, y: 200) // önceki frame göre hesaplar
    }
}

#Preview {
    ColorsBootcamp()
}
