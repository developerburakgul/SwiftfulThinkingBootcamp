//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 17.12.2024.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = [
        "Hi",
        "Hello",
        "SwiftUI",
        "ForEach",
        "Bootcamp",
        "SwiftUI Bootcamp",
        
    ]
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(index): " + "\(data[index])")
            }
        }
    }
    
    
    
    
    
    
    //MARK: - Example -1
//    VStack {
//        ForEach(0..<10) { index in
//            HStack {
//                Circle()
//                    .frame(width: 30, height: 30)
//
//                Text("Index is : " + index.description)
//            }
//        }
//    }
}

#Preview {
    ForEachBootcamp()
}
