//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 4.01.2025.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var isOn: Bool = false
    var body: some View {
        VStack {
            HStack {
                Text("Status : ")
                Text(isOn ? "Online" : "Offline")
            }
            .font(.headline)
            Toggle(isOn: $isOn) {
                Text("Change Status")
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBootcamp()
}
