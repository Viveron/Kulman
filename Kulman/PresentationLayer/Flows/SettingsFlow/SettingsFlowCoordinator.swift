//
//  SettingsFlowCoordinator.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import Foundation

final class SettingsFlowCoordinator: BaseCoordinator {

    private let router: RootRoutable
    private let moduleFactory: SettingsFlowFactory

    // MARK: - Coordinator interface

    init(router: RootRoutable) {
        self.router = router
        self.moduleFactory = SettingsFlowFactory()
    }

    // MARK: - Coordinatable

    override func start() {
        showSettingsModule()
    }

    // MARK: - Modules

    private func showSettingsModule() {
        let module = moduleFactory.makeSettingsModule()
        
        router.setRootModule(module)
    }
}
