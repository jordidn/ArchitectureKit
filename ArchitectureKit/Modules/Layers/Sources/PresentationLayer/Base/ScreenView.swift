//
//  ScreenView.swift
//  
//
//  Created by Jordi Duran Ortega on 27/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import SwiftUI

public protocol ScreenView: View {
    associatedtype Model: BaseViewModel
    var viewModel: Model { get }
    init(viewModel: Model)
}
