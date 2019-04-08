//
//  NavigationController+Theme.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

extension NavigationController {
    
    enum Theme: Equatable {
        
        case black
        case white
        
        var tintColor: UIColor {
            switch self {
            case .black:
                return .white
                
            case .white:
                return .black
            }
        }
        
        var barStyle: UIBarStyle {
            switch self {
            case .black:
                return .black
                
            case .white:
                return .default
            }
        }
    }
}
