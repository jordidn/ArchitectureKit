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
        container.register(screen: CharactersScreen.self)
        
        container.register(CharactersScreen.ViewModel.self) { resolver in
            CharactersScreen.ViewModel(getCharactersUseCase: resolver.resolve())
        }
    }
    
}



private extension Container {
    func register<Screen: ScreenView>(screen: Screen.Type) {
        register(screen.self) { resolver in
            Screen(viewModel: resolver.resolve())
        }
    }
}
