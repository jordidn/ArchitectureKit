//
//  Swinject+Resolver.swift
//  
//
//  Created by Jordi Duran Ortega on 27/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Swinject

public extension Resolver {
 
    func resolve<Service>() -> Service {
        guard let service = resolve(Service.self) else {
            fatalError("Error resolving \(Service.self).self dependency")
        }
        return service
    }
    
}
