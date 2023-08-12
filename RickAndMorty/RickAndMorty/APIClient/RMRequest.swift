//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Thanuga Athsara Illeperuma on 2023-08-09.
//

import Foundation

/// object that provides a single API Call
final class RMRequest {
    
    ///API Constants
    // BASE URL
    // END POINT
    // path components
    
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api/character/2"
        
    }
    
    
    ///Desired endpoint
    
    private let endpoint: RMEndpoint
    
    ///path componneta api if any
    
    private let pathComponents: Set<String> //optional argument
    
    private let queryParameters:[URLQueryItem]
    
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/."
        string += endpoint.rawValue
        
        if pathComponents.isEmpty {

            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
                    string += "?"
                    let argumentString = queryParameters.compactMap({
                        guard let value = $0.value else { return nil }
                        return "\($0.name)=\(value)"
                    }).joined(separator: "&")

                    string += argumentString
            
        }
        
        return string
        
    }
    
    public var url: URL? {
         return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    // MARK:- Public
    
    public init(
        endpoint: RMEndpoint,
         pathComponents: Set<String> = [],
         queryParameters:[URLQueryItem] = []
    )
    
    {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    // https://rickandmortyapi.com/api/character/2
    
}
