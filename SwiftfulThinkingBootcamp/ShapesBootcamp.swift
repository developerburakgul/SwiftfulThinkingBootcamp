//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 10.12.2024.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .continuous)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
//            .fill(Color.red)
//            .foregroundColor(.pink)
//            .stroke()
//            .stroke(.red)
//            .stroke(.blue, lineWidth: 20) // çemberin çizgisinin kalınlığını belirler
//            .stroke(
//                .orange,
//                style: StrokeStyle(
//                    lineWidth: 10, // çember genişliğini belirler
//                    lineCap: .butt,
//                    dash: [100]
//                )
//            )
//            .trim(from: 0.25,to: 1.0) // 0 derece noktasından saat yönünde devam eder ve bu aralığı çizer
//            .stroke(.purple, lineWidth: 50)
            .frame(width: 300, height: 200)
        
    }
}

#Preview {
    ShapesBootcamp()
}
