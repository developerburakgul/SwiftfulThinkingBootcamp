//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 17.12.2024.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
        
        
        //MARK: - Init 1
        // Dikey, Indicator var
        //        ScrollView {
        //            VStack {
        //                ForEach(0..<50) { indeks in
        //                    Rectangle()
        //                        .fill(.blue)
        //                        .frame(height: 300)
        //                }
        //            }
        //        }
        
        
        //MARK: - Indicator
        // Önceden indicatorü gösterme init içindeymiş ama sonradan modifier kullanarka yapıyoruz
        //        ScrollView {
        //            VStack {
        //                ForEach(0..<50) { indeks in
        //                    Rectangle()
        //                        .fill(.blue)
        //                        .frame(height: 300)
        //                }
        //            }
        //        }
        //        .scrollIndicators(.never)
        
        //MARK: - Init 2
        // Axis olarak .horizontal verince mantıken içe HStack koycan
        //        ScrollView(.horizontal) {
        //            HStack {
        //                ForEach(0..<50) { indeks in
        //                    Rectangle()
        //                        .fill(.blue)
        //                        .frame(width: 20, height: 300)
        //                }
        //            }
        //        }
        
        
        //MARK: - Example
        
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { indeks in
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(0..<10) { indeks in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                                
                            }
                        }
                    }
                    
                    
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
