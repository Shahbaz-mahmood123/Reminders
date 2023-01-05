//
//  NetworkService .swift
//  Reminder
//
//  Created by Shahbaz Mahmmod on 2022-12-13.
//

import Foundation


protocol NetworkService {
    func getNasaPicOfTheday()  async throws  -> APOD
}
