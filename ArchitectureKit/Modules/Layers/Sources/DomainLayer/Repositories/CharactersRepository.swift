//
//  CharactersRepository.swift
//  
//
//  Created by Jordi Duran Ortega on 26/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Foundation

public protocol CharactersRepository {
    func getCharacters() async throws -> [CharacterEntity]
}
