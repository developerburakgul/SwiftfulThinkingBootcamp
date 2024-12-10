//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 10.12.2024.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello World ! This is the Swiftful Thinking Bootcamp. I am Burak Gül. I am iOS Developer Intern at Obilet. I am studying SwiftUI. I am learning SwiftUI.")
//        Text("Hello World".lowercased())
//        Text("Hello World".capitalized)
//            .font(.body) // default
//            .fontWeight(.bold)
//            .bold()
//            .underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough() // üstünü çizer
//            .strikethrough(color: Color.green)
//            .font(.system(size: 24, weight: .light, design: .serif))
//            .baselineOffset(20) // her satır arası boşluğu belirler
//            .kerning(2) // her harf arasındaki boşluk
//            .multilineTextAlignment(.leading)
//            .foregroundColor(.blue) // font color
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1) // normal font sizenın ne kadarına düşebilir otomatik olarak onu belirtir
        
        
    }
}

#Preview {
    TextBootcamp()
}
