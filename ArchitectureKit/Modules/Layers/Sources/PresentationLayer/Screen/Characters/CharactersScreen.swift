//
//  CharactersScreen.swift
//  
//
//  Created by Jordi Duran Ortega on 31/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import SwiftUI
import DomainLayer

public struct CharactersScreen: ScreenView {
    
    // MARK: - Properties
    
    @ObservedObject public var viewModel: Self.ViewModel
    
    
    public init(viewModel: Model) {
        self.viewModel = viewModel
    }
    
    // MARK: - Body
    
    public var body: some View {
        VStack {
            ForEach(viewModel.characters, id: \.self) { item in
                Text(item)
            }
        }
        .onAppear {
            viewModel.getCharacters()
        }
    }
    
}




extension CharactersScreen {
    
    public final class ViewModel: BaseViewModel {
        
        // MARK: - Dependencies
        
        private let getCharactersUseCase: GetCharacterUseCase
        
        
        // MARK: - Init
        
        init(getCharactersUseCase: GetCharacterUseCase) {
            self.getCharactersUseCase = getCharactersUseCase
        }
        
        
        // MARK: - Properties
        
        @Published private(set) var characters: [String] = []
        
        
        func getCharacters() {
            Task {
                let characters = try await getCharactersUseCase.execute()
                await MainActor.run {
                    self.characters = characters
                }
            }
        }
        
    }
    
}
