//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 30.12.2024.
//

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(75), spacing: nil, alignment: nil),
        GridItem(.fixed(100), spacing: nil, alignment: nil),
        GridItem(.fixed(75), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil)
    ]
    
    // içinde bulunduğu view'ın sınırlarını korumak ister
    let columns2: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    // bunu tam anlamadım
    let columns3: [GridItem] = [
        GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil),
        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil),
    ]
    
    let columns4: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil), // buradaki spacing yatay olarka columnlardaki boşluğu belirtir
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    //MARK: - Example - 1
//    var body: some View {
//        ScrollView {
//            Rectangle()
//                .fill(Color.white)
//                .frame(height: 400)
//            
//            LazyVGrid(columns: columns4) {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 150)
//                }
//            }
//
//        }
//    }
    
    
    //MARK: - Example - 2
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns4,
                alignment: .center,
                spacing: 6, // dikey olarka boşluğu belirtir
                pinnedViews: [.sectionHeaders]) {
                    
                    Section {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 1")
                            .foregroundStyle(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.blue)
                            .padding()
                    } footer: {
                        
                    }
                    
                    Section {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 2")
                            .foregroundStyle(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.red)
                            .padding()
                    } footer: {
                        
                    }

                    
                }
        }
    }
}

#Preview {
    GridBootcamp()
}
