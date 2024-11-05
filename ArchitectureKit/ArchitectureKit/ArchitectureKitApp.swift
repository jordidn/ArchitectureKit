//
//  ArchitectureKitApp.swift
//  ArchitectureKit
//
//  Created by Jordi Duran Ortega on 26/10/24.
//

import SwiftUI
import Swinject
import PresentationLayer

@main
struct ArchitectureKitApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    
    var body: some Scene {
        WindowGroup {
            CharactersScreen.instance()
        }
    }
}



final class AppDelegate: NSObject, UIApplicationDelegate {
 
    // MARK: - Implememtation
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // DI Registration
        AppContainer.registerDependencies()
        
        return true
    }
    
}






extension ScreenView {
    
    static func instance() -> Self {
        guard let view: Self = AppContainer.resolveSync() else {
            fatalError("Couldn't instantiate SwiftUI view [\(Self.self).self], register in Dependency Injection first.")
        }
        return view
    }
    
}
