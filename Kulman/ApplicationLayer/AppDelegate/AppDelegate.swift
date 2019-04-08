//
//  AppDelegate.swift
//  Kulman
//
//  Created by Victor Shabanov on 21/01/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    private let coordinator = ApplicationAssembly.appCoordinator
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        coordinator.launch(with: launchOptions)
        
        return true
    }
}
