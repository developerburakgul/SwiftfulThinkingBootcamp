//
//  ImagesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 10.12.2024.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("google")
            .renderingMode(.template) // arka plan ayırt edilebilir ve öndeki foto renk olunca bunu ekle resizabledan önce ve font vererek g harfinin rengini değiştirebilirsin.
            .resizable()
//            .aspectRatio(contentMode: .fit) // bunu kullanma pek
            .scaledToFill()
//            .scaledToFit()
            .frame(width: 300,height: 200)
//            .clipped()
            .foregroundStyle(.red)
//            .cornerRadius(150) //  frame width height eşit olunca yapmak gerek bunu ve yarısı verilir.
//            .clipShape( // frame width height farklı olunca clipshape kullanılır
////                Circle()
////                RoundedRectangle(cornerRadius: 25)
////                Ellipse()
//            )
        
        
    }
}

#Preview {
    ImagesBootcamp()
}
