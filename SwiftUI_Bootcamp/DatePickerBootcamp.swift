//
//  DatePickerBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 25.03.2024.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack{
            
            Text("SELECTED DATE IS: ")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            DatePicker("Select a Date", selection: $selectedDate)
                .tint(.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
    //                GraphicalDatePickerStyle()
    //                WheelDatePickerStyle()
                )
            
            
            DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date])
            
            DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.hourAndMinute])
            
            DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate)
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
