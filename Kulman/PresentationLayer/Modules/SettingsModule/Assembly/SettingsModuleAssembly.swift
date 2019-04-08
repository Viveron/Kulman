//
//  SettingsModuleAssembly.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

final class SettingsModuleAssembly {
    
    static func createModule() -> SettingsModule {
        let viewModel = SettingsViewModel()
        let view = SettingsViewController(viewModel: viewModel)
        
        viewModel.view = view
        
        return view
    }
}
