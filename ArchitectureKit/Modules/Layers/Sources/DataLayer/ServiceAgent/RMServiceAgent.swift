//
//  RMServiceAgent.swift
//  
//
//  Created by Jordi Duran Ortega on 26/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import RickMortySwiftApi

protocol RMServiceAgent {
    func getCharacters() async throws -> [RMCharacterModel]
}


struct RMServiceAgentImpl: RMServiceAgent {
    
    // MARK: - Properties
    
    private let rmClient = RMClient()
    
    
    // MARK: - Implementation
    
    func getCharacters() async throws -> [RMCharacterModel] {
        return try await rmClient.character().getAllCharacters()
    }
    
}
