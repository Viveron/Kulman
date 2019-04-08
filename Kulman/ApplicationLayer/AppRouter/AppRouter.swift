//
//  AppRouter.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

protocol AppRouter {
    
    func openWindow(root controller: UIViewController)
    func openWindow(root controller: UIViewController, level: UIWindow.Level)
    
    func closeWindow()
    func closeWindow(level: UIWindow.Level)
}
