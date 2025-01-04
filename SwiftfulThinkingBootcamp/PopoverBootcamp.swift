//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 4.01.2025.
//


// sheet
// animations
// transitions
import SwiftUI

struct PopoverBootcamp: View {
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button("BUTTON"){
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            
            //MARK: - Method 1 - SHEET
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
            //MARK: - Method 2 - TRANSITION
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring)
//                }
//            }
//            .zIndex(2.0)
            
            //MARK: - Method 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring)
            
        }
    }
}


struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            
            Button {
                // bu method 1 için
                // presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

#Preview {
    PopoverBootcamp()
//    NewScreen()
}
