//
//  RootFlowCoordinatorFactory.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import Foundation

final class RootFlowCoordinatorFactory {
    
    func makeHomeFlowCoordinator(router: RootRoutable) -> Coordinatable {
        return HomeFlowCoordinator(router: router)
    }
    
    func makeSettingsFlowCoordinator(router: RootRoutable) -> Coordinatable {
        return SettingsFlowCoordinator(router: router)
    }
}
