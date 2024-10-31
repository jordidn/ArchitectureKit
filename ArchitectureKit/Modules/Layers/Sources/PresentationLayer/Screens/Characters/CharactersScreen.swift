//
//  CharactersScreen.swift
//
//
//  Created by Jordi Duran Ortega on 27/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import SwiftUI

struct CharactersScreen: ScreenView {
    
    // MARK: - Properties
    
    @ObservedObject var viewModel: Self.ViewModel
    
    
    // MARK: - Body
    
    var body: some View {
        Text("Characters Screen")
    }
    
}


//#Preview {
//    CharactersScreen(viewModel: )
//}
