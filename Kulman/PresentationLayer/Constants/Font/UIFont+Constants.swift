//
//  UIFont+Constants.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

// MARK: - SF Pro family system fonts
extension UIFont {
    
    enum Size: CGFloat {
        /// 10pt font size
        case small  = 10
        /// 12pt font size
        case lite   = 12
        /// 14pt font size
        case medium = 14
        /// 16pt font size
        case normal = 16
        /// 18pt font size
        case big    = 18
        /// 20pt font size
        case large  = 20
        /// 30pt font size
        case extra  = 30
    }
    
    static func semibold(_ size: UIFont.Size) -> UIFont {
        return .systemFont(ofSize: size.rawValue, weight: .semibold)
    }
    
    static func regular(_ size: UIFont.Size) -> UIFont {
        return .systemFont(ofSize: size.rawValue, weight: .regular)
    }
    
    static func medium(_ size: UIFont.Size) -> UIFont {
        return .systemFont(ofSize: size.rawValue, weight: .medium)
    }
    
    static func bold(_ size: UIFont.Size) -> UIFont {
        return .systemFont(ofSize: size.rawValue, weight: .bold)
    }
}
