//
//  CharactersScreen-ViewModel.swift
//  
//
//  Created by Jordi Duran Ortega on 27/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import DomainLayer

extension CharactersScreen {
    
    final class ViewModel: BaseViewModel {
     
        // MARK: - Dependencies
        
        private let getCharactersUseCase: GetCharactersUseCase
        
        
        // MARK: - Init
        
        init(getCharactersUseCase: GetCharactersUseCase) {
            self.getCharactersUseCase = getCharactersUseCase
        }
        
    }
    
}
