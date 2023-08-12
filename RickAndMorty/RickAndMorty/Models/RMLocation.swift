//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Thanuga Athsara Illeperuma on 2023-08-08.
//

import Foundation


struct RMLocation: Codable {
    let id: Int
        let name: String
        let type: String
        let dimension: String
        let residents: [String]
        let url: String
        let created: String}
