//
//  ProfileView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 11.01.2025.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name")  var currentUserName: String?
    @AppStorage("age")  var currentUserAge: Int?
    @AppStorage("gender")  var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            Text(currentUserName ?? "Your name here")
            Text ("This user is  \(currentUserAge ?? 18) years old")
            Text("Their gender is \(currentUserGender ?? "unknown")")
            
            Text("SIGN OUT")
                .foregroundStyle(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
            
        }
        .font(.title)
        .foregroundStyle(Color.blue)
        .padding()
        .padding(.vertical, 30)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
    
    func signOut() {
        currentUserAge = nil
        currentUserName = nil
        currentUserGender = nil
        
        withAnimation(.spring) {
            currentUserSignedIn = false
        }
        
    }
}

#Preview {
    ProfileView()
}
