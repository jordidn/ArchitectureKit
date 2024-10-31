//
//  AppContainer.swift
//  ArchitectureKit
//
//  Created by Jordi Duran Ortega on 27/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Swinject
import PresentationLayer
import DomainLayer
import DataLayer

final class AppContainer {
    
    // MARK: - Shared
    
    private static let shared = AppContainer()
    
    
    // MARK: - Assembler
    
    private let container = Container()
    
    
    // MARK: - Init
    
    private init() {
        register()
    }
    
    // MARK: - Public methods
    
    static func registerDependencies() {
        // Initialise all our container that we need in our project
        _ = self.shared
    }
    
    
    // MARK: - Private methods
    
    /// Register Presentation, Domain and Data modules
    private func register() {
        let assembler = Assembler(container: container)
        let assemblableModules: [AssemblableLayer.Type] = [
            PresentationAssembler.self,
            DomainAssembler.self,
            DataAssembler.self
        ]
        assemblableModules.forEach { $0.register(to: assembler) }
    }
    
}
