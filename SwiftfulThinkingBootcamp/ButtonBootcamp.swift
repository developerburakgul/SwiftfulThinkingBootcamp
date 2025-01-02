//
//  ButtonBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 31.12.2024.
//

import SwiftUI

struct ButtonBootcamp: View {
    @State var title: String = "This is my title"
    var body: some View {
        VStack(spacing: 20){
            Text(title)
            //MARK: - Initializer 1
            Button("Press me") {
                self.title = "Button was pressed"
            }
            .tint(.red) // buton yazısını değiştirmek için bu kullanılır önceden .accentColor kullanılıyormuş
            
            //MARK: - Initializer 2
            // label kısmına istediğimiz custom view'ı yazabiliyoruz
            Button {
                self.title = "Button #2 was pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
                
            }
            
            //MARK: - Example
            
            Button {
                self.title = "Button #3 was pressed"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 50, height: 50)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    }
            }
            
            Button {
                self.title = "Button #4 was pressed"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2.0)
                    )
            }


            
            

        }
    }
}

#Preview {
    ButtonBootcamp()
}
