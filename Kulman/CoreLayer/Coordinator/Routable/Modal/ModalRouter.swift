//
//  ModalRouter.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit
import LeadKit

final class ModalRouter: ModalRoutable {

    private var childRootControllers: [UIViewController] = []

    private(set) weak var rootController: UIViewController?

    init(_ rootController: UIViewController) {
        self.rootController = rootController
    }

    // MARK: - ModalRouter

    func present(_ module: Presentable?) {
        present(module, animated: true)
    }

    func present(_ module: Presentable?, animated: Bool) {
        guard let controller = module?.toPresent() else {
            return
        }

        let presetClosure: VoidBlock = { [weak self] in
            self?.rootController?.present(controller, animated: animated, completion: nil)
        }

        if rootController?.presentedViewController != nil {
            dismissModule(animated: false, completion: presetClosure)
        } else {
            presetClosure()
        }
    }

    func dismissModule() {
        dismissModule(animated: true, completion: nil)
    }

    func dismissModule(animated: Bool, completion: VoidBlock?) {
        rootController?.dismiss(animated: animated) { [weak self] in
            self?.childRootControllers = []
            completion?()
        }
    }

    func prsentChild(_ module: Presentable?) -> StackRoutable? {
        return prsentChild(module, animated: true)
    }

    func prsentChild(_ module: Presentable?, animated: Bool) -> StackRoutable? {
        guard let controller = module?.toPresent() else {
            return nil
        }

        let child = UINavigationController(rootViewController: controller)
        childRootControllers.append(child)

        let router = StackRouter(child)
        present(router)

        return router
    }

    // MARK: - Presentable

    func toPresent() -> UIViewController? {
        return rootController
    }
}
