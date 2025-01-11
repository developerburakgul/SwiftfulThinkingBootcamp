//
//  SubmitTextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 11.01.2025.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    @State private var text: String = ""
    var body: some View {
        VStack {
            TextField("Placeholder...", text: $text)
                .submitLabel(.continue) // klavyede sağ aşağıdaki butonu ayarlamak için
                .onSubmit {
                    print("Here") // tıklanınca ne olacağı
                }
            TextField("Placeholder...", text: $text)
                .submitLabel(.go)
                .onSubmit {
                    print("Here")
                }
            TextField("Placeholder...", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("Here")
                }
        }
    }
}

#Preview {
    SubmitTextFieldBootcamp()
}
