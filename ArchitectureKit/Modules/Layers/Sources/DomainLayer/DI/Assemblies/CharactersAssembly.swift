//
//  CharactersAssembly.swift
//  
//
//  Created by Jordi Duran Ortega on 27/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Swinject

struct CharactersAssembly: DomainAssembly {
    
    func assembleMappers(container: Swinject.Container) {
        // ...
    }
    
    func assembleUseCases(container: Swinject.Container) {
        container.register(GetCharactersUseCase.self) { resolver in
            GetCharactersUseCaseImpl(charactersRepository: resolver.resolve())
        }
    }
    
}
