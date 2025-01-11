//
//  ListSwipeActionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 11.01.2025.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    @State var fruits: [String] = [
        "Apple",
        "Orange",
        "Banana",
        "Pear",
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) { fruit  in
                Text(fruit.capitalized)
                    .swipeActions(
                        edge: .trailing,
                        allowsFullSwipe: true) {
                            Button("Archive") {
                                
                            }
                            .tint(.green)
                            
                            Button("Save") {
                                
                            }
                            .tint(.blue)
                            
                            Button("Junk") {
                                
                            }
                            .tint(.red)
                        }
                        .swipeActions(
                            edge: .leading,
                            allowsFullSwipe: false) {
                                Button("Share") {
                                    
                                }
                                .tint(.yellow)
                                
                            }
            }
            //            .onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
