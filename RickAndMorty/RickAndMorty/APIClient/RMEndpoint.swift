//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Thanuga Athsara Illeperuma on 2023-08-09.
//

import Foundation

/// represents unique API endpoint
@frozen enum RMEndpoint: String {
    
    ///Endpoint to get character info
    case character
    ///Endpoint to get location info
    case location
    ///Endpoint to get character info 
    case episode
    
}
