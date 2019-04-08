//
//  CoordinatableWindow+Extension.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit
import LeadKit

extension CoordinatableWindow {

    @discardableResult
    static func makeKeyAndVisible<T: UIViewController>(level: UIWindow.Level,
                                                       rootType: T.Type,
                                                       _ coordinatable: @escaping Closure<T, Coordinatable>)
        -> CoordinatableWindow {

        let rootViewController = rootType.init()
        let coordinator = coordinatable(rootViewController)

        let window = CoordinatableWindow(level: level,
                                         coordinator: coordinator)
        coordinator.onFinish = { _ in
            window.isHidden = true
            window.resignKey()
        }

        window.rootViewController = rootViewController
        window.makeKeyAndVisible()

        return window
    }
}
