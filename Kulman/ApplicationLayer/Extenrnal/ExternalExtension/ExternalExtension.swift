//
//  ExternalExtension.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import Foundation

// MARK: - External application' extensions protocol
protocol ExternalExtension {
    
    static var bundleId: String { get }
}
