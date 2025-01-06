//
//  TextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 4.01.2025.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type Something here...", text: $textFieldText)
                //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .foregroundStyle(Color.red)
                    .font(.headline)
                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                }) {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            textIsAppropriate()
                            ? Color.blue
                            : Color.gray
                        )
                        .cornerRadius(10)
                        .foregroundStyle(Color.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { item in
                    Text(item)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
        }
            
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count >=  3{
            return true
        }
        return false
    }
}

#Preview {
    TextFieldBootcamp()
}
