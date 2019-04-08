//
//  ApplicationAssembly.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import Foundation

enum ApplicationAssembly {
    
    static var appRouter: AppRouter = {
        return LaunchAppRouter()
    }()
    
    static var appMediator: AppMediator = {
        return LaunchAppMediator()
    }()
    
    static var appCoordinator: AppCoordinator = {
        return LaunchAppCoordinator(router: appRouter)
    }()
}
