//
//  ContactsFlowCoordinator.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import Foundation

final class ContactsFlowCoordinator: BaseCoordinator {

    private let router: StackRoutable
    private let instructor: ContactsFlowInstructor
    private let moduleFactory: ContactsFlowFactory

    // MARK: - Coordinator interface

    init(router: StackRoutable) {
        self.router = router
        self.instructor = ContactsFlowInstructor()
        self.moduleFactory = ContactsFlowFactory()
    }

    // MARK: - Coordinatable

    override func start() {
        showContactsModule()
    }

    // MARK: - Modules

    private func showContactsModule() {
        let module = moduleFactory.makeContactsModule()
        
        module.onClose = { [weak self] in
            self?.finishFlow()
        }
        
        module.toPresent()?.hidesBottomBarWhenPushed = true
        router.push(module)
    }

    // MARK: - Private methods

    private func finishFlow() {
        onFinish?(self)
    }
}
