//
//  APODModel.swift
//  Reminder
//
//  Created by Shahbaz Mahmmod on 2022-12-13.
//

import Foundation


struct APOD: Codable {
    let copyright: String
    let date: String
    let explanation: String
    let hdurl: String
    let mediaType: String
    let serviceVersion: String
    let title: String
    let url: String

}
