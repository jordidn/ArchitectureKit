//
//  CharactersRepositoryImpl.swift
//  
//
//  Created by Jordi Duran Ortega on 26/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import DomainLayer

struct CharactersRepositoryImpl: CharactersRepository {
    
    // MARK: - Dependencies
    
    private let rmServiceAgent: RMServiceAgent
    private let charactersDataMapper: CharactersDataMapper
    
    
    // MARK: - Init
    
    init(rmServiceAgent: RMServiceAgent,
         charactersDataMapper: CharactersDataMapper) {
        self.rmServiceAgent = rmServiceAgent
        self.charactersDataMapper = charactersDataMapper
    }
    
    
    // MARK: - Implementation
    
    func getCharacters() async throws -> [CharacterEntity] {
        // Request
        let characters = try await rmServiceAgent.getCharacters()
        
        // Response
        return charactersDataMapper.mapCharacters(characters)
    }
    
}
