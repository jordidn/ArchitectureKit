//
//  AssemblableLayer.swift
//  
//
//  Created by Jordi Duran Ortega on 31/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Swinject

public protocol AssemblableLayer {
    static func register(to assembler: Swinject.Assembler)
}


public extension Resolver {
 
    func resolve<Service>() -> Service {
        guard let service = resolve(Service.self) else {
            fatalError("Error resolving \(Service.self).self dependency")
        }
        return service
    }
    
}
