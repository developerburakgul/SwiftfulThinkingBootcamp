//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 2.01.2025.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    var body: some View {
        VStack {
            Button {
                isStartingState.toggle()
            } label: {
                Text("Button : \(isStartingState.description)" )
            }
            Text(
                isStartingState
                ? "Starting State"
                : "Ending State"
            )
            
            
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0.0)
                .fill(
                    isStartingState
                    ? Color.red
                    : Color.blue
                )
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 50
                )
            
            
            Spacer()

        }
    }
}

#Preview {
    TernaryBootcamp()
}
