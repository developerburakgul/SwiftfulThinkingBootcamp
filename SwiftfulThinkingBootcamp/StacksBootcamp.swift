//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 15.12.2024.
//

import SwiftUI

struct StacksBootcamp: View {
    
    // There are 3 type stack
    // 1 - Vstacks -> Vertical
    // 2 - Hstacks -> Horizontal
    // 3 - Zstacks -> zIndex (back to front) ,
    var body: some View {
        
//        //MARK: - VStack
//        
//        VStack {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100,height: 100)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100,height: 100)
//            
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100,height: 100)
//        }
//        
//        //MARK: - HStack
//        HStack {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100,height: 100)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100,height: 100)
//            
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100,height: 100)
//        }
//        
//        //MARK: - ZStack
//        ZStack {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 150,height: 150)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 130,height: 130)
//
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100,height: 100)
//        }
        
        // bu regular vstackdir ve space e sahiptir
//        VStack {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100,height: 100)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100,height: 100)
//            
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100,height: 100)
//        }
        
        //MARK: - Spacing
        // ZStack -> spacing'e sahip değil
//        VStack(alignment: .center, spacing: 0) { // eğer nil yaparsan spacing'i 8 algılıyor.
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100,height: 100)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100,height: 100)
//            
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100,height: 100)
//        }
        
        //MARK: - Aligment
        // hstackde de aynısı ama alignment değişiyor mantıken
        
//        VStack(alignment: .center, spacing: 0) { // eğer nil yaparsan spacing'i 8 algılıyor.
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200,height: 200)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 150,height: 150)
//            
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100,height: 100)
//        }
        
        
//        ZStack(alignment: .leading) {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200,height: 200)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 150,height: 150)
//            
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100,height: 100)
//        }
        
        
        //MARK: - Example
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//            
//            VStack(alignment: .leading, spacing: 30){
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150, alignment: .center)
//                
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 100)
//                
//                HStack(alignment: .bottom) {
//                    Rectangle()
//                        .fill(.purple)
//                        .frame(width: 50, height: 50)
//                    
//                    Rectangle()
//                        .fill(.pink)
//                        .frame(width: 75, height: 75)                    
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 25, height: 25)
//                }
//                .background(.white)
//                
//            }
//            .background(.black)
//                
//        }
        
        
        //MARK: - Real World Example
        
//        VStack(alignment: .center, spacing: 20) {
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//            
//            Text("Items in your card")
//                .font(.caption)
//                .foregroundStyle(.gray)
//        }
        
        //MARK: - ZStack and Background does same effect. When complex senario use ZStack otherwise use background
        
        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .fill()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
            
            Text("1")
                .foregroundStyle(.white)
                .font(.largeTitle)
                .background(
                    
                    Circle()
                        .fill()
                        .frame(width: 100, height: 100)
                )
                
        }
    }
}

#Preview {
    StacksBootcamp()
}
