//
//  NativePopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 13.01.2025.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    @State private var showPopover: Bool = false
    
    @State private var feedbackOptions: [String] = [
        "Great!",
        "Not bad",
        "Could be better",
    ]
        
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
                Button("Click me") {
                    showPopover.toggle()
                }
                .padding(20)
                .background(Color.yellow)
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.bottomTrailing)) {
                    ScrollView {
                        VStack(alignment: .leading, spacing: 16) {
                            ForEach(feedbackOptions, id: \.self) { option in
                                Button(option) {
                                    showPopover = false
                                }
                                
                                if option != feedbackOptions.last {
                                    Divider()
                                }
                            }
                        }
                        .padding(16)
                    }
                    .presentationCompactAdaptation(.popover)
                }
    //            .popover(isPresented: $showPopover) {
    //                Text("Hello subscribers!!")
    //                    .presentationCompactAdaptation(.popover)
    //            }
                
                Spacer()
            }
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
