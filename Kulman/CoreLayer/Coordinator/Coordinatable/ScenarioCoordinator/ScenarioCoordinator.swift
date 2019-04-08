//
//  ScenarioCoordinator.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//


import Foundation

class ScenarioCoordinator<T: Scenario>: BaseCoordinator {

    func start(with scenario: T) {
        assertionFailure("Method start(with:) has not been implemented")
    }
}
