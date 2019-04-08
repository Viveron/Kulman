//
//  LaunchAppCoordinator.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

final class LaunchAppCoordinator: BaseCoordinator, AppCoordinator {
    
    private let router: AppRouter
    private let coordinatorFactory: LaunchAppCoordinatorFactory
    
    init(router: AppRouter) {
        self.router = router
        self.coordinatorFactory = LaunchAppCoordinatorFactory()
    }
    
    // MARK: - AppCoordinator
    
    func launch(with options: [UIApplication.LaunchOptionsKey : Any]?) {
        startAppFlow()
    }
    
    // MARK: - Coordinators
    
    private func startAppFlow() {
        let output = coordinatorFactory.makeTabBarCoordinator()
        
        if let controller = output.module.toPresent() {
            add(child: output.coordanator)
            output.coordanator.start()
            
            router.openWindow(root: controller)
        }
    }
}
