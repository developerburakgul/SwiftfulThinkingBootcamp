//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 6.01.2025.
//

import SwiftUI

struct DocumentationBootcamp: View {
    //MARK: - PROPERTIES
    @State var data: [String] = [
        "Apples",
        "Oranges",
        "Bananas"
    ]
    @State var showAlert: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(data, id: \.self) { name in
                    Text(name)
                        .font(.headline)
                }
            }
            .navigationTitle("Documentation")
            .navigationBarItems(
                trailing: Button(
                    action: {
                        showAlert.toggle()
                    },
                    label: {
                        Text("Alert")
                    }
                )
            )
            .alert(isPresented: $showAlert) {
                getAlert(text: "This is the alert!!")
            }
        }
    }
    //MARK: - FUNCTIONS
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

#Preview {
    DocumentationBootcamp()
}
