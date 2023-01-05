//
//  ContentView.swift
//  Reminder
//
//  Created by Shahbaz Mahmmod on 2022-12-11.
//

import SwiftUI

struct ContentView: View {
    @State var currentScreen: Int = 0
    
    let options: [Options] = [
        .init(title: "Home", imageName: "house"),
        .init(title: "Settings", imageName: "gear")
    
    ]
    
    var body: some View {
        NavigationView{

            ListView(currentScreen: $currentScreen, options: options)
            MainView(currentScreen: $currentScreen)
        }.frame(minWidth: 600, minHeight: 400)

    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
