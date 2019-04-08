//
//  BaseCoordinator.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import Foundation

class BaseCoordinator: Coordinatable {

    private(set) var childCoordinators: [Coordinatable] = []

    var onFinish: ValueBlock<Coordinatable>?

    func start() {
        assertionFailure("Method start() has not been implemented")
    }

    func add(child coordinator: Coordinatable) {
        for element in childCoordinators where element === coordinator {
            return
        }
        childCoordinators.append(coordinator)
    }

    func remove(child coordinator: Coordinatable?) {
        guard !childCoordinators.isEmpty else {
            return
        }
        guard let coordinator = coordinator else {
            return
        }

        for (index, element) in childCoordinators.enumerated() where element === coordinator {
            childCoordinators.remove(at: index)
            return
        }
    }
}

// MARK: - Helper
extension BaseCoordinator {

    @discardableResult
    func bindTo<T>(_ coordinator: T) -> T where T: Coordinatable {
        coordinator.onFinish = { [weak self] in
            self?.remove(child: $0)
        }
        add(child: coordinator)

        return coordinator
    }
}
