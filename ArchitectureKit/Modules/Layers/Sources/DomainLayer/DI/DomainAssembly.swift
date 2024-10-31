//
//  DomainAssembly.swift
//  
//
//  Created by Jordi Duran Ortega on 27/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Swinject

protocol DomainAssembly: Assembly {
    func assembleMappers(container: Container)
    func assembleUseCases(container: Container)
}

extension DomainAssembly {
    func assemble(container: Container) {
        assembleMappers(container: container)
        assembleUseCases(container: container)
    }
}
