//
//  PresentationAssembler.swift
//  
//
//  Created by Jordi Duran Ortega on 27/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Swinject
import DomainLayer

public struct PresentationAssembler: AssemblableLayer {
    
    public static func register(to assembler: Swinject.Assembler) {
        let assemblies: [PresentationAssembly] = [
            CharactersAssembly()
        ]
        assembler.apply(assemblies: assemblies)
    }
    
}
