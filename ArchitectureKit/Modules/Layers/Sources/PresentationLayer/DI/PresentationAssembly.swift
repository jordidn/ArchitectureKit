//
//  PresentationAssembly.swift
//  
//
//  Created by Jordi Duran Ortega on 27/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Swinject

protocol PresentationAssembly: Assembly {
    func assembleUIMappers(container: Container)
    func assembleViewModel(container: Container)
    func assembleScreens(container: Container)
}

extension PresentationAssembly {
    func assemble(container: Container) {
        assembleUIMappers(container: container)
        assembleViewModel(container: container)
        assembleScreens(container: container)
    }
}


// MARK: - Screen register

extension Container {
    func register<Screen: ScreenView>(screen: Screen.Type) {
        register(screen.self) { resolver in
            Screen(viewModel: resolver.resolve())
        }
    }
}
