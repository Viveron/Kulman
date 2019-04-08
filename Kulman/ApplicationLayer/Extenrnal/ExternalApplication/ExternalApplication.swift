//
//  ExternalApplication.swift
//  Kulman
//
//  Created by Victor Shabanov on 22/01/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import Foundation

protocol ExternalApplication {
    
    var name: String { get }
    var applink: String { get }
}

// MARK: - ExternalApplication default implementation
extension ExternalApplication where Self: RawRepresentable, Self.RawValue == String {
    
    var name: String {
        return rawValue
    }
}
