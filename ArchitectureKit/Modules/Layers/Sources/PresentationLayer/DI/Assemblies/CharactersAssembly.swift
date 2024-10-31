//
//  CharactersAssembly.swift
//
//
//  Created by Jordi Duran Ortega on 27/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Swinject
import DomainLayer

struct CharactersAssembly: PresentationAssembly {
    
    func assembleUIMappers(container: Container) {
        // ...
    }
    
    func assembleViewModel(container: Container) {
        container.register(CharactersScreen.ViewModel.self) { resolver in
            CharactersScreen.ViewModel(getCharactersUseCase: resolver.resolve())
        }
    }
    
    func assembleScreens(container: Container) {
        container.register(screen: CharactersScreen.self)
    }
    
}
