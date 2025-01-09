//
//  ViewModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 8.01.2025.
//

import SwiftUI

struct FruitModel: Identifiable{
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange",count: 2)
        let fruit2 = FruitModel(name: "Blue",count: 3)
        let fruit3 = FruitModel(name: "Green",count: 5)
        isLoading = true
        
        // simulate data fetch from service
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
//    @ObservedObject
    // @StateObject -> Use this on creation / Init
    // @Observedobject -> Use this for subviews
    @StateObject
    var fruitViewModel: FruitViewModel = FruitViewModel()
    var body: some View {
        NavigationView {
            
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                        
                    }
                    .onDelete { indexSet in
                        fruitViewModel.deleteFruit(index: indexSet)
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing: NavigationLink(destination: {
                RandomScreen(fruitViewModel: fruitViewModel)
            }, label: {
                Image(systemName: "arrow.right")
                    .font(.title)
            }))
//            .onAppear {
//                fruitViewModel.getFruits()
            // bunu kullanırsan her ekran gözüktüğünde veri ekler aynı veriden çok olur bunu yerine viewModelin initinde bir kez çağır
//            }
        }
    }
}

struct RandomScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Go Back")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
            }

        }
        
    }
}

#Preview {
    ViewModelBootcamp()
}
