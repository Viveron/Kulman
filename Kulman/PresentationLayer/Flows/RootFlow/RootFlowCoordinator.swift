//
//  RootFlow.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

final class RootFlowCoordinator: BaseCoordinator {
    
    private let rootModule: RootModule
    private let coordinatorFactory: RootFlowCoordinatorFactory
    
    init(rootModule: RootModule) {
        self.rootModule = rootModule
        self.coordinatorFactory = RootFlowCoordinatorFactory()
    }
    
    override func start() {
        rootModule.onSelectHomeItem = prepareFlowRoter { [weak self] in
            self?.startFlow(self?.coordinatorFactory.makeHomeFlowCoordinator(router: $0))
        }
        rootModule.onSelectSettingsItem = prepareFlowRoter { [weak self] in
            self?.startFlow(self?.coordinatorFactory.makeSettingsFlowCoordinator(router: $0))
        }
    }
    
    // MARK: - Private methods
    
    private func prepareFlowRoter(_ closure: @escaping ValueBlock<RootRoutable>) -> ValueBlock<UINavigationController> {
        return {
            if $0.viewControllers.isEmpty {
                closure(RootRouter($0))
            }
        }
    }
    
    private func startFlow(_ coordinator: Coordinatable?) {
        if let coordinator = coordinator {
            add(child: coordinator)
            coordinator.start()
        }
    }
}
