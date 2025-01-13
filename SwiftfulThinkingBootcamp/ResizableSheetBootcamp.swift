//
//  ResizableSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 12.01.2025.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    @State private var showSheet: Bool = false
    @State private var detens: PresentationDetent = .large
    var body: some View {
        Button("Click me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detends: $detens)
//                .presentationDetents([.medium, .large]) // burada medium açılır large a da izin verir
//                .presentationDetents([.fraction(0.5), .medium, .large])
//                .presentationDetents([.height(200)])
                .presentationDetents([.fraction(0.2), .height(600), .medium, .large], selection: $detens)
                .presentationDragIndicator(.hidden) // açılan sheetdeki drag kutucuğunun gözüküp gözükmemesi
//                .interactiveDismissDisabled()
        }
    }
}

struct MyNextView: View {
    @Binding var detends: PresentationDetent
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack(spacing: 40) {
                Button("20%") {
                    detends = .fraction(0.2)
                }

                Button("Medium") {
                    detends = .medium
                }
                
                Button("600 px") {
                    detends = .height(600)
                }
                
                Button("Large") {
                    detends = .large
                }
                
                
            }
        }
    }
}

#Preview {
    ResizableSheetBootcamp()
}
