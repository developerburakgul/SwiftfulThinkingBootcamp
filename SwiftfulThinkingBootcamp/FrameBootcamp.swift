//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 15.12.2024.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
//        Text("Hello, World!") // hiçbişey yazmazsak minimum frame e sahiptir
//            .background(Color.green)
//            .frame(width: 300, height: 300, alignment: .leading) // buradaki aligment içindeki contenti hizalar.
//            .background(Color.red)
        
//        Text("Hello, World!")
//            .background(.green)
//            .frame(maxWidth: .infinity, alignment: .center) // parent view'ın içinde olduğunda büyük yer kapla demek
//            .background(.red)
        
//        Text("Hello, World!")
//            .background(.green)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center) // parent view'ın içinde olduğunda büyük yer kapla demek
//            .background(.red)
        
        Text("Hello, World!")
            .background(.red)
            .frame(height: 100)
            .background(.orange)
            .frame(height: 150)
            .background(.purple)
            .frame(maxWidth: .infinity)
            .background(.pink)
            .frame(height: 400)
            .background(.green)
            .frame(maxHeight: .infinity)
            .background(.yellow)
        
        

        
    }
}

#Preview {
    FrameBootcamp()
}
