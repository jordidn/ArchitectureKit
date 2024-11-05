//
//  CharactersAssembly.swift
//  
//
//  Created by Jordi Duran Ortega on 31/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Swinject
import DomainLayer

struct CharactersAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(CharactersRepository.self) { resolver in
            CharactersRepositoryImpl()
        }
    }
    
}
