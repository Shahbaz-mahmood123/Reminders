//
//  WebService.swift
//  Reminder
//
//  Created by Shahbaz Mahmmod on 2022-12-13.
//

import Foundation

enum NetworkError: Error {
    case badRequest
    case decodingError
    case badURL
    case InvalidResponse
}

class WebService: NetworkService {
    func getNasaPicOfTheday() async throws -> APOD {
        
        guard let url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=") else { fatalError("Missing URL") }
        let urlRequest = URLRequest(url: url)
        
        let (data , response) = try await URLSession.shared.data(for: urlRequest)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NetworkError.InvalidResponse
            
        }
        
        let decodedResponse  = try JSONDecoder().decode(APOD.self, from: data)
        
        return decodedResponse
        
    }
    
    
    //    private func search(for searchTerm: String) async -> Word {
    //      // build the request
    //      let request = buildURLRequest(for: searchTerm)
    //
    //      do {
    //        let (data, response) = try await URLSession.shared.data(for: request)
    //        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
    //          throw WordsAPI.invalidServerResponse
    //        }
    //        let word = try JSONDecoder().decode(Word.self, from: data)
    //        return word
    //      }
    //      catch {
    //        return Word.empty
    //      }
    
}
