//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 9.01.2025.
//

import SwiftUI

struct AppStorageBootcamp: View {
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            if let name = currentUserName {
                Text("Hello \(name)")
            }
            Button("Save".uppercased()) {
                let name = "Burak Gül"
                currentUserName = name
//                UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

#Preview {
    AppStorageBootcamp()
}
