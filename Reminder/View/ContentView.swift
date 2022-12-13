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

            ListView(options: options)
            MainView(currentScreen: $currentScreen)
        }.frame(minWidth: 600, minHeight: 400)

    }
}

struct ListView: View {
    let options: [Options]
    var body: some View {
        VStack{
            ForEach(options, id: \.self) { option in
                HStack{
                    Image(systemName: option.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                    Text(option.title)
                    Spacer()
                }.padding(9)
                    .onTapGesture {
                        if option.title == "Home" {
                            
                        }
                    }
 
            }
        }
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
