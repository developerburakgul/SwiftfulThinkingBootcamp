//
//  AsyncImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 11.01.2025.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url: URL = URL(string: "https://picsum.photos/400")!
    var body: some View {
        AsyncImage(url: url) { phase in
            
            /// burada phase bir enum 3 durumu var.
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)

            case .failure(let error):
                Image(systemName: "questionmark")
            }
        }
        
        
    }
    
    //MARK: - Example 1
//    AsyncImage(url: url, content: { image in
//        image
//            .resizable()
//            .scaledToFit()
//            .frame(width: 100, height: 100)
//            .cornerRadius(20)
//    }, placeholder: {
//        ProgressView()
//    })
}

#Preview {
    AsyncImageBootcamp()
}
