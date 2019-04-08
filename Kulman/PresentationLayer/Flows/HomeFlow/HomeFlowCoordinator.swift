//
//  HomeFlowCoordinator.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import Foundation

final class HomeFlowCoordinator: BaseCoordinator {

    private let router: RootRoutable
    private let moduleFactory: HomeFlowFactory

    // MARK: - Coordinator interface

    init(router: RootRoutable) {
        self.router = router
        self.moduleFactory = HomeFlowFactory()
    }

    // MARK: - Coordinatable

    override func start() {
        showHomeModule()
    }

    // MARK: - Modules

    private func showHomeModule() {
        let module = moduleFactory.makeHomeModule()
        
        module.onContacts = { [weak self] in
            self?.startContactsFlow()
        }
        
        router.setRootModule(module)
    }

    // MARK: - Coordinators

    private func startContactsFlow() {
        let coordinator = ContactsFlowCoordinator(router: router)
        
        bindTo(coordinator).start()
    }    
}
