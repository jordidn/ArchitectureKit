//
//  CharactersAssembly.swift
//  
//
//  Created by Jordi Duran Ortega on 31/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Swinject

struct CharactersAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(GetCharacterUseCase.self) { resolver in
            GetCharacterUseCaseImpl(charactersRepository: resolver.resolve())
        }
    }
    
}
