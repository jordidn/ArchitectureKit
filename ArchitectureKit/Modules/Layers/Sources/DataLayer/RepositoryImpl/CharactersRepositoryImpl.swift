//
//  CharactersRepositoryImpl.swift
//  
//
//  Created by Jordi Duran Ortega on 31/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import DomainLayer

struct CharactersRepositoryImpl: CharactersRepository {
    
    func getCharacters() async throws -> [String] {
        return ["Item 1", "Item 2", "Item 3"]
    }
    
}
