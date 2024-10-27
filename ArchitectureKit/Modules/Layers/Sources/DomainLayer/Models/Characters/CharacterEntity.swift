//
//  CharacterEntity.swift
//  
//
//  Created by Jordi Duran Ortega on 26/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Foundation

public struct CharacterEntity {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let image: String
    
    public init(id: Int, name: String, status: String, species: String, type: String, gender: String, image: String) {
        self.id = id
        self.name = name
        self.status = status
        self.species = species
        self.type = type
        self.gender = gender
        self.image = image
    }
}
