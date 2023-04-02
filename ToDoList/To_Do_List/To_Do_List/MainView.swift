//
//  MainView.swift
//  To_Do_List
//
//  Created by 정성윤 on 2023/03/29.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    var selectedDate: Date
    var body: some View {
        NavigationView() {
            VStack{
                List {
                    ForEach(listViewModel.items){ item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear){
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                }
                .listStyle(PlainListStyle())
                .navigationTitle("Todo List")
                .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView()))
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)){
                    Text("Main")
                }
                Spacer()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MainView(selectedDate: Date())
        }
        .environmentObject(ListViewModel())
    }
}
