//
//  MainView.swift
//  Reminder
//
//  Created by Shahbaz Mahmmod on 2022-12-11.
//

import SwiftUI

struct MainView: View {
    @Binding var currentScreen: Int
    var body: some View {
        
        if currentScreen == 0 {
            HomeView()
        }
        else {
            SettingsView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
