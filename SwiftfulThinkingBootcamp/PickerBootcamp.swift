//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 4.01.2025.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent",
        "Most Popular",
        "Most Liked"
    ]
    
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red // bu tüm segment contollerlarda geçerli
        let attributes: [NSAttributedString.Key : Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(
            attributes,
            for: .selected
        )
    }
    var body: some View {
        
        Picker(
            selection: $selection) {
                ForEach(filterOptions.indices) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            } label: {
                Text("Picker")
            }
            .pickerStyle(SegmentedPickerStyle())
//            .background(Color.red)
        
        
        
        
    }
    
    
    
    //MARK: - Example - 1
    // body içine yazılacak bu
    //VStack {
    //
    //    HStack {
    //        Text("Age: ")
    //        Text("\(selection)")
    //
    //    }
    //
    //    // bu picker videodakş ile farklı
    //    Picker(
    //        selection: $selection) {
    //            ForEach(18...100, id: \.self) { item in
    //                Text("\(item) burak") // pickerda gösterilen değer
    //                    .font(.headline)
    //                    .foregroundStyle(Color.red)
    //                    .tag(item) // bu tag type ile selection type aynı olmalı
    //            }
    //        } label: {
    //            Text("Picker")
    //        }
    //        .background(Color.gray.opacity(0.3))
    //        .pickerStyle(.inline) // bu picker stylelar pickerın çeşidini belirliyor
    //}
    
    //MARK: - Example - 2
    // bu örnek de body içine yapıştırılcak ama videoakiler ile uyuşmuyor genel olarak. Ne olduğunu anla internetten baka baka yaparsın.
    //    List {
    //        Picker(
    //            selection: $selection) {
    //                ForEach(filterOptions, id: \.self) { item in
    //                    HStack {
    //                        Text(item)
    //                            .tag(item)
    //                        Image(systemName: "heart.fill")
    //                    }
    //                }
    //            } label: {
    //                HStack {
    //                    Text("Filter : ")
    //                    Text("\(selection)")
    //                }
    ////                    .font(.headline)
    ////                    .foregroundStyle(Color.white)
    ////                    .padding()
    ////                    .padding(.horizontal)
    ////                    .background(Color.blue)
    ////                    .cornerRadius(10)
    ////                    .shadow(
    ////                        color: Color.blue.opacity(0.3),
    ////                        radius: 10,
    ////                        x: 0,
    ////                        y: 10
    ////                    )
    //            }
    //            .pickerStyle(.menu)
    //    }
}




#Preview {
    PickerBootcamp()
}
