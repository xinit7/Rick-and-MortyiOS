//
//  RMService.swift
//  RickAndMorty
//
//  Created by Thanuga Athsara Illeperuma on 2023-08-09.
//

import Foundation
///primary API service object to get rick and morty data
final class RMService {
    ///shares singleton instance
    static let shared = RMService()
    
    
    ///privatized constructor
    private init (){}
    
        /// send rick and  morty API Call
    /// - Parameters:
    ///      - request: Request instance
    ///      - completion:  callback with data or error 
    
    public func execute<T: Codable>(
          _ request: RMRequest,
          expecting type: T.Type,
          completion: @escaping (Result<T, Error>) -> Void
    ){
    }
}
