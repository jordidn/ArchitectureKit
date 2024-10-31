//
//  DataAssembly.swift
//  
//
//  Created by Jordi Duran Ortega on 27/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Swinject

protocol DataAssembly: Assembly {
    func assembleProviders(container: Container)
    func assembleMappers(container: Container)
    func assembleRepositories(container: Container)
}

extension DataAssembly {
    func assemble(container: Container) {
        assembleProviders(container: container)
        assembleMappers(container: container)
        assembleRepositories(container: container)
    }
}
