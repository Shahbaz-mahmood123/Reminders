//
//  HomeViewModel.swift
//  Reminder
//
//  Created by Shahbaz Mahmmod on 2022-12-13.
//

import Foundation

class HomeViewModel: ObservableObject{
    @Published var apod: APOD?
    private let webService: WebService
    
    init(webService: WebService){
        self.webService = webService
    }
    @MainActor
    func fetchAPOD(){
        Task{
            do{
                apod = try await webService.getNasaPicOfTheday()
                
            } catch{
                print("error calling API")
            }
        }
    }
}
