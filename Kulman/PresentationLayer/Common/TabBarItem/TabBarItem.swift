//
//  Item.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

protocol TabBarItem {
    
    var title: String { get }
}

// MARK: - TabBarItem Protocol default implementation
extension TabBarItem where Self: RawRepresentable, Self.RawValue == String {
    
    var title: String {
        return rawValue
    }
}
