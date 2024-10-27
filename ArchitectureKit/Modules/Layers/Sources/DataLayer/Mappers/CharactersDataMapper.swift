//
//  CharactersDataMapper.swift
//  
//
//  Created by Jordi Duran Ortega on 26/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import RickMortySwiftApi
import DomainLayer

protocol CharactersDataMapper {
    func mapCharacters(_ response: [RMCharacterModel]) -> [CharacterEntity]
}


struct CharactersDataMapperImpl: CharactersDataMapper {
    
    // MARK: - Implementation
    
    func mapCharacters(_ response: [RMCharacterModel]) -> [CharacterEntity] {
        response.map(mapCharacter)
    }
    
    
    // MARK: - Private methods
    
    private func mapCharacter(_ response: RMCharacterModel) -> CharacterEntity {
        CharacterEntity(id: response.id,
                        name: response.name,
                        status: response.status,
                        species: response.species,
                        type: response.type,
                        gender: response.gender,
                        image: response.image)
    }
    
}
