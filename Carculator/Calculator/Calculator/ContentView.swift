//
//  ContentView.swift
//  Calculator
//
//  Created by 정성윤 on 2023/03/26.
//

import SwiftUI

struct ContentView: View {
    @State var go : Bool = false
    @State private var hasTimeElapsed = false
    var body: some View {
        NavigationView(){
            VStack{
                NavigationView{
                    LottieView(filename: "calculator")
                }.padding()
                NavigationLink(destination: MainView().navigationBarBackButtonHidden(true), isActive: $go){
                }.task{await delayNext()}
            }
        }
    }
    private func delayNext() async{
        try? await Task.sleep(nanoseconds: 2_000_000_000)
        hasTimeElapsed = true
        go = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
