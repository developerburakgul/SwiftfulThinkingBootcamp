//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 4.01.2025.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(Color.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
                
            }
            
            //MARK: - Example 1
//            .sheet(isPresented: $showSheet) {
//                // buraya logic girme ileride göstericek farklı sheetler göstermeyi
//                // sayfada birtane sheet olmalı view başına
//                SecondScreen()
//            }
            
            //MARK: - Example 2
            .fullScreenCover(isPresented: $showSheet) {
                // dont add conditional logic
                SecondScreen()
            }

        }
    }
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .padding(20)
                    
                
            }
            

        }
    }
}

#Preview {
    SheetsBootcamp()
}
