//
//  BaseUIModel.swift
//  
//
//  Created by Jordi Duran Ortega on 27/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Combine

open class BaseUIModel: ObservableObject, Loadable {
    
    // MARK: - Properties
    
    @Published private(set) var isLoading: Bool = false
    
    internal var disposables: Set<AnyCancellable>
    
    
    // MARK: - Init
    
    internal init() {
        self.disposables = Set<AnyCancellable>()
    }
    
    deinit {
        self.disposables.forEach { $0.cancel() }
    }
    
    
    // MARK: - Loadable
    
    public func showLoading() async {
        await MainActor.run {
            self.isLoading = true
        }
    }
    
    public func hideLoading() async {
        await MainActor.run {
            self.isLoading = false
        }
    }
    
}
