//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 15.12.2024.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .frame(width: 100, height: 100, alignment: .center)
//            .background(
////                Color.red // burada illa renk vermemize gerek yok onu kastediyor
////                LinearGradient(
////                    colors: [.red, .blue],
////                    startPoint: .leading,
////                    endPoint: .trailing
////                )
//                Circle()
//                    .fill(.blue)
//            )
        
        
        //MARK: - Burada Text'in frame'ini değiştirerek ilerledik
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .frame(width: 100, height: 100, alignment: .center)
//            .background(
//                Circle()
//                    .fill(.blue)
//            )
//            .frame(width: 120, height: 120, alignment: .center)
//            .background(
//                Circle()
//                    .fill(.red)
//            )
        
        
//        //MARK: - Circle'in frame'ini değiştirerek gittik
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                Circle()
//                    .fill(.blue)
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//            .background(
//                Circle()
//                    .fill(.red)
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
        
        //MARK: - Circle'in frame'ini değiştirerek gittik -2
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                Circle()
//                    .fill(
//                        LinearGradient(
//                            colors: [.red, .blue],
//                            startPoint: .leading,
//                            endPoint: .trailing
//                        )
//                    )
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//            .background(
//                Circle()
//                    .fill(
//                        LinearGradient(
//                            colors: [.blue, .red],
//                            startPoint: .leading,
//                            endPoint: .trailing
//                        )
//                    )
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
        
        //MARK: - Background :eklediğin hep altına gelir
        
        
        //MARK: - Overlay : eklediklerin hep üste gelir
//        Circle()
//            .fill(.pink)
//            .frame(width: 100, height: 100)
//            .overlay {
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundStyle(.white)
//            }
        
        //MARK: - background overlay combination
        
//        Circle()
//            .fill(.pink)
//            .frame(width: 100, height: 100)
//            .overlay {
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundStyle(.white)
//            }
//            .background(
//                Circle()
//                    .fill(.purple)
//                    .frame(width: 110, height: 110)
//            )
        
        
        //MARK: - Aligment
        // burada overlay ana siyah rectangle'ın üstüne geliyor ve overylay mavi siyahın neresine align etsin
        // background ana siyah rectangle'ın arkasına geliyor ve backgorund'un neresine gelsin diyoruz.
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(alignment: .topLeading) {
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 50, height: 50)
//            }
//        
//            .background(alignment: .bottomTrailing) {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//            }
        
        
        //MARK: - Real World Example
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(.white)
            .background {
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [.red, .blue],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                        
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .red , radius: 10, x: 0, y: 10)
                    .overlay(alignment: .bottomTrailing) {
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay {
                                Text("100")
                                    .font(.headline)
                                    .foregroundStyle(.white)
                            }
                            .shadow(color: .blue , radius: 10, x: 5, y: 5)
                    }
            }
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
