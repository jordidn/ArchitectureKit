//
//  CharactersAssembly.swift
//  
//
//  Created by Jordi Duran Ortega on 27/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Swinject
import DomainLayer

struct CharactersAssembly: DataAssembly {
    
    func assembleProviders(container: Swinject.Container) {
        container.register(RMServiceAgent.self) { _ in
            RMServiceAgentImpl()
        }.inObjectScope(.container)
    }
    
    func assembleMappers(container: Swinject.Container) {
        container.register(CharactersDataMapper.self) { _ in
            CharactersDataMapperImpl()
        }
    }
    
    func assembleRepositories(container: Swinject.Container) {
        container.register(CharactersRepository.self) { resolver in
            CharactersRepositoryImpl(rmServiceAgent: resolver.resolve(),
                                     charactersDataMapper: resolver.resolve())
        }
    }
    
}
