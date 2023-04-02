//
//  ContentView.swift
//  To_Do_List
//
//  Created by 정성윤 on 2023/03/29.
//

import SwiftUI

struct ContentView: View {
    @State var go : Bool = true
    @State private var selectedDate = Date()
    var body: some View {
        VStack{
            DatePicker("Select a date", selection: $selectedDate, displayedComponents: [.date])
                            .datePickerStyle(GraphicalDatePickerStyle())
                            .padding()
            NavigationLink(destination: MainView(selectedDate: selectedDate).navigationBarBackButtonHidden(true)){
                Text("Add event")
            }
        }.onAppear {
            let calendar = Calendar.current
            let year = calendar.component(.year, from: Date())
            let month = calendar.component(.month, from: Date())
            let day = calendar.component(.day, from: Date())
            let newDate = calendar.date(from: DateComponents(year: year, month: month, day: day + 7))!
                selectedDate = newDate
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }.environmentObject(ListViewModel())
    }
}
