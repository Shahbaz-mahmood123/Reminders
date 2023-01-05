//
//  ListView.swift
//  Reminder
//
//  Created by Shahbaz Mahmmod on 2022-12-13.
//

import SwiftUI

struct ListView: View {
    @Binding var currentScreen: Int
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
                            currentScreen = 0
                        }
                        if option.title == "Settings" {
                            currentScreen = 1
                        }
                    }
 
            }
        }
        Spacer()
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
