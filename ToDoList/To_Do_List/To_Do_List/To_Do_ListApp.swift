//
//  To_Do_ListApp.swift
//  To_Do_List
//
//  Created by 정성윤 on 2023/03/29.
//

import SwiftUI

@main
struct To_Do_ListApp: App {
    @StateObject var listViewModel : ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }
            .environmentObject(listViewModel)
        }
    }
}
