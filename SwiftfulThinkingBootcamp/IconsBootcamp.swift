//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 10.12.2024.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original) // iconun renkli olmasında önemli ve font dan önce olması gerek galiba
            .font(.largeTitle)
//            .resizable()
//            .aspectRatio(contentMode: .fit) // bunun yerine scaledToFit,scaledToFill var
//            .scaledToFit()
//            .scaledToFill()
        
//            .font(.largeTitle)
//            .font(.system(size: 200))
//            .foregroundStyle(.red)  // foregroundcolor ile aynı ve renklendirmeye yarar
//            .frame(width: 300, height: 300)
//            .clipped() // frame dışında kalan alanları clip diyerek atar :D
        
        
    }
}

#Preview {
    IconsBootcamp()
}
