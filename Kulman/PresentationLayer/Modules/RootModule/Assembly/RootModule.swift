//
//  RootModule.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import Foundation
import LeadKit

protocol RootModule: Presentable {
    
    var onSelectHomeItem: ValueBlock<UINavigationController>? { get set }
    
    var onSelectSettingsItem: ValueBlock<UINavigationController>? { get set }
}
