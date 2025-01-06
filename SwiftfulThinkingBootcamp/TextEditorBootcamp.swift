//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 4.01.2025.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditorText: String = "This is starting text"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .colorMultiply(Color(UIColor.systemGray4))
                
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundStyle(Color.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                }
                Text(savedText)
                Spacer()
                

            }
            .padding()
            .background(Color.green)
            .navigationTitle("Text Editör Bootcamp")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
