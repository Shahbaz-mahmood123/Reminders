//
//  HomeView.swift
//  Reminder
//
//  Created by Shahbaz Mahmmod on 2022-12-11.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var vm = HomeViewModel(webService: WebService())
    
    var body: some View {
        ZStack{
            Text(vm.apod!.explanation)
        }.onAppear{
            vm.fetchAPOD()
        } 
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
