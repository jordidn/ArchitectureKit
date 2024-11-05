//
//  GetCharacterUseCase.swift
//  
//
//  Created by Jordi Duran Ortega on 31/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Foundation

public protocol GetCharacterUseCase {
    func execute() async throws -> [String]
}


struct GetCharacterUseCaseImpl: GetCharacterUseCase {
    
    // MARK: - Dependencies
    
    private let charactersRepository: CharactersRepository
    
    
    init(charactersRepository: CharactersRepository) {
        self.charactersRepository = charactersRepository
    }
    
    
    func execute() async throws -> [String] {
        try await charactersRepository.getCharacters()
    }
    
}
