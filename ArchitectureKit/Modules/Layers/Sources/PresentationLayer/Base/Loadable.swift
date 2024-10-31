//
//  Loadable.swift
//  
//
//  Created by Jordi Duran Ortega on 27/10/24.
//  Copyright (c) 2024 Fashion Retail España SA. All rights reserved.
//

import Foundation

public protocol Loadable {
    func showLoading() async
    func hideLoading() async
}
