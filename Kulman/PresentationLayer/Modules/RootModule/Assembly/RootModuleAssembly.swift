//
//  RootModuleAssembly.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

final class RootModuleAssembly {
    
    static func createModule() -> RootModule {
        let viewModel = RootViewModel()
        let view = RootViewController(viewModel: viewModel)
        
        viewModel.view = view
        
        return view
    }
}
