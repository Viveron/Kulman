//
//  UIWindow+Level.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

extension UIWindow {
    
    convenience init(level: UIWindow.Level) {
        self.init(frame: UIScreen.main.bounds)
        windowLevel = level
    }
}
