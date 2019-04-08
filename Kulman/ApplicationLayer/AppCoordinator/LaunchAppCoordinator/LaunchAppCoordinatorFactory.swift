//
//  LaunchAppCoordinatorFactory.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

final class LaunchAppCoordinatorFactory {
    
    func makeTabBarCoordinator() -> (coordanator: Coordinatable, module: Presentable) {
        let module = RootModuleAssembly.createModule()
        let coordinator = RootFlowCoordinator(rootModule: module)
        
        return (coordanator: coordinator, module: module)
    }
}
