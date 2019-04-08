//
//  HomeModuleAssembly.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

final class HomeModuleAssembly {
    
    static func createModule() -> HomeModule {
        let viewModel = HomeViewModel()
        let view = HomeViewController(viewModel: viewModel)
        
        viewModel.view = view
        
        return view
    }
}

