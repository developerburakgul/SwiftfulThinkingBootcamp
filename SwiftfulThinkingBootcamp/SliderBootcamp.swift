//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 5.01.2025.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(String(format: "%.2f", sliderValue))
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 1...5)
//            Slider(value: $sliderValue, in: 1...5, step: 0.5)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                label: {
                    Text("Title")
                },
                minimumValueLabel: {
                    Text("1")
                },
                maximumValueLabel: {
                    Text("5")
                },
                onEditingChanged: { bool in
                    color = .green
                }
            )
                .tint(.red)
        }
    }
}

#Preview {
    SliderBootcamp()
}
