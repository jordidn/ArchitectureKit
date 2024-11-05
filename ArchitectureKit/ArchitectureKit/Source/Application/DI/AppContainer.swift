//
//  AppContainer.swift
//  ArchitectureKit
//
//  Created by Jordi Duran Ortega on 31/10/24.
//

import PresentationLayer
import DomainLayer
import DataLayer
import Swinject

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



extension AppContainer {
    
    private static let threadSafeContainer = shared.container.synchronize()
    
    static func resolveSync<Service>() -> Service {
        guard let service = threadSafeContainer.resolve(Service.self) else {
            fatalError("Error resolving [threadSafe] \(Service.self).self dependency")
        }
        return service
    }
    
}
