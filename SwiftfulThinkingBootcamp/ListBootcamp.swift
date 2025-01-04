//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 4.01.2025.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "Apple",
        "Orange",
        "Banana",
        "Pear",
    ]
    
    @State var veggies: [String] = [
        "Tomato",
        "Patato",
        "Carrot",
    ]
    
    @State var isCollapsable: Bool = true
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { item in
                        Text(item.capitalized)
                            .font(.caption)
                            .foregroundStyle(Color.white)
                            .padding(.vertical)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(Color.pink)
                    }
                    //                .onDelete { indexSet in
                    //                    delete(indexSet: indexSet)
                    //                }
                    .onDelete(perform: delete)
//                    .onMove { indices, newOffSet in
//                        move(indices: indices, newOffSet: newOffSet)
//                    }
                    .onMove(perform: move )
                    .listRowBackground(Color.pink)
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .foregroundStyle(Color.orange)
                    .font(.headline)
                }
                
                Section {
                    ForEach(veggies, id: \.self) { item in
                        Text(item.capitalized)
                    }
                } header: {
                    Text("Veggies")
//                        .foregroundStyle(.pink)
                }
                
                Section(isExpanded: $isCollapsable) {
                    ForEach(veggies, id: \.self) { item in
                        Text(item.capitalized)
                    }
                } header: {
                    Text("Collapsable Veggies")
                }


            }
            .tint(.purple)
            // bu listStyle kısımları farklı cihazlarda ipadlerde vs farklı gözükebilir
//            .listStyle(DefaultListStyle())
//            .listStyle(GroupedListStyle())
//            .listStyle(InsetGroupedListStyle())
//            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
        }
        .accentColor(.red)
        
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffSet: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffSet)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
