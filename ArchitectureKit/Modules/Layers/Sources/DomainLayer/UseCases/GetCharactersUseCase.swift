//
//  GetCharactersUseCase.swift
//  
//
//  Created by Jordi Duran Ortega on 26/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Foundation

protocol GetCharactersUseCase {
    func execute() async throws -> [CharacterEntity]
}


struct GetCharactersUseCaseImpl: GetCharactersUseCase {
    
    // MARK: - Dependencies
    
    private let charactersRepository: CharactersRepository
    
    
    // MARK: - Init
    
    init(charactersRepository: CharactersRepository) {
        self.charactersRepository = charactersRepository
    }
    
    
    // MARK: - Implementation
    
    func execute() async throws -> [CharacterEntity] {
        try await charactersRepository.getCharacters()
    }
    
}
