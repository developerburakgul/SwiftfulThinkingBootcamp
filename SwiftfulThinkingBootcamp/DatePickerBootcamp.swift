//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 5.01.2025.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectedDate: Date = Date()
    
    let startDate: Date = Calendar.current.date(
        from: DateComponents(year: 2018) ) ?? Date()
    let endDate: Date = Date()
    var dateFormatter: DateFormatter {
        var df = DateFormatter()
        df.dateStyle = .medium
        return df
    }
    var body: some View {
       
        VStack {
            Text("Selected day is : ")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            DatePicker(
                "Selecet a day",
                selection: $selectedDate,
                in: startDate...endDate,
                displayedComponents: [.date]
            )
        }
        
    }
    
    //MARK: - Example 1
    // body içine göm
//    VStack {
//        DatePicker(
//            "Select a day",
//            selection: $selectedDate
//        )
//        .accentColor(Color.red)
//        .datePickerStyle(CompactDatePickerStyle())
////            .datePickerStyle(GraphicalDatePickerStyle())
////            .datePickerStyle(WheelDatePickerStyle())
//    }
    
    //MARK: - Example 2
//    DatePicker(
//        "Select a date",
//        selection: $selectedDate,
//        displayedComponents: [.date]
//    )
}

#Preview {
    DatePickerBootcamp()
}
