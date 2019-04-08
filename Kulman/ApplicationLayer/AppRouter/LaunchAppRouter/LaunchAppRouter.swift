//
//  LaunchAppRouter.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

final class LaunchAppRouter: AppRouter {
    
    private var windows: [UIWindow.Level: UIWindow] = [:]
    
    // MARK: - AppRouter
    
    func openWindow(root controller: UIViewController) {
        openWindow(root: controller, level: .normal)
    }
    
    func openWindow(root controller: UIViewController, level: UIWindow.Level) {
        let window = windows[level] ?? UIWindow(level: level)
        windows[level] = window
        
        window.backgroundColor = .white
        window.rootViewController = controller
        
        if !window.isKeyWindow {
            window.makeKeyAndVisible()
        }
    }
    
    func closeWindow() {
        closeWindow(level: .normal)
    }
    
    func closeWindow(level: UIWindow.Level) {
        guard let window = windows[level] else {
            return
        }
        
        windows[level] = nil
        window.rootViewController?.view.isUserInteractionEnabled = false
        window.rootViewController = nil
        window.isHidden = true
    }
}
