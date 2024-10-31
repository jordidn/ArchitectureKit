//
//  ArchitectureKitApp.swift
//  ArchitectureKit
//
//  Created by Jordi Duran Ortega on 26/10/24.
//

import SwiftUI

@main
struct ArchitectureKitApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
}


final class AppDelegate: NSObject, UIApplicationDelegate {
 
    // MARK: - Implememtation
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // DI Registration
        #if !TESTING
        AppContainer.registerDependencies()
        #endif
        
        return true
    }
    
}
