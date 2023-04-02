//
//  EventView.swift
//  To_Do_List
//
//  Created by 정성윤 on 2023/04/01.
//

import SwiftUI
import EventKit


struct EventView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    @State private var eventTitle = ""
    @State private var eventStartTime = Date()
    @State private var eventEndTime = Date()

    let selectedDate: Date

    var body: some View {
        VStack {
            TextField("Event Title", text: $eventTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            DatePicker("Start Time", selection: $eventStartTime, displayedComponents: [.hourAndMinute])
                .datePickerStyle(WheelDatePickerStyle())
                .padding()
            DatePicker("End Time", selection: $eventEndTime, displayedComponents: [.hourAndMinute])
                .datePickerStyle(WheelDatePickerStyle())
                .padding()
            Button(action: {
            }) {
                Text("Add Event")
            }
            Spacer()
        }
        .navigationTitle("New Event")
    }
}


struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(selectedDate: Date())
    };
}
