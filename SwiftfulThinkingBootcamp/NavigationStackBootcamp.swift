//
//  NavigationStackBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 11.01.2025.
//

import SwiftUI


//MARK: - Notlar
/*
 NavigationViewda lazy loading yok yani hangi viewları navigationlink de vericeksem onları oluşturuyor haliyle bu performans sorunu yaratır
 
 NavigationView  kullanma. NavigationStack ve navigationDestination kullan ama ilerde de router sınıfı yaz bunun için.
 
 navigation link navigationDestionaiton a data dtype göndercek o yüzden navigationDestination a Alacağı data type 'ı yazmalısın
 
 navigationStack e birden fazla navigatiınDestination ile birden fazla type ekleyebiliyoruz
 */

struct NavigationStackBootcamp: View {
    let fruits = ["banana","apple","orange"]
    @State private var stackPaths: [String] = []
    var body: some View {
        NavigationStack(path: $stackPaths){
            
            ScrollView {
                VStack(spacing: 40) {
                    
                    Button {
                        stackPaths.append(contentsOf: [
                            "Coconut",
                            "WaterMelon",
                            "Mango"
                        ])
                    } label: {
                        Text("Super Segue")
                    }

                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { item in
                        NavigationLink(value: item) {
                            Text("Click me \(item)")
                        }
                    }
                }
            }
            .navigationDestination(for: String.self, destination: { fruit in
                Text("Abother Screen \(fruit)")
            })
            
            .navigationDestination(for: Int.self, destination: { int in
                MySecondScreen(value: int)
            })
            .navigationTitle("Nav Bootcamp")
        }
    }
}

struct MySecondScreen: View {
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT \(value)")
    }
    var body: some View {
        Text("\(value)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
