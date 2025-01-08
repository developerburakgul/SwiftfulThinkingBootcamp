//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 6.01.2025.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let username: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    @State var users: [UserModel] = [
        UserModel(name: "burak", username: "iamburakgul", followerCount: 101, isVerified: true),
        UserModel(name: "batuhan", username: "iambatuhan", followerCount: 10, isVerified: false),
        UserModel(name: "meryem", username: "iammeryem", followerCount: 2, isVerified: false)
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 20) {
                        Circle()
                            .frame(width: 35, height: 35)
                            .foregroundColor(.blue)
                        
                        VStack(alignment: .leading) {
                            Text(user.name)
                                .font(.title2)
                            
                            Text(user.username)
                                .font(.headline)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                        
                        Image(systemName: "checkmark.seal.fill")
                            .foregroundStyle(.blue)
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.title3)
                            Text("Followers")
                                .font(.headline)
                                .foregroundStyle(.gray)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
        }
    }
}

#Preview {
    ModelBootcamp()
}
