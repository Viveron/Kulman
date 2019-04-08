//
//  StackRouter.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit
import LeadKit

class StackRouter: StackRoutable {

    private var completions: [UIViewController: VoidBlock]

    private lazy var modalRouter: ModalRoutable? = { [weak self] in
        guard let rootController = self?.rootController else {
            return nil
        }
        return ModalRouter(rootController)
    }()

    private(set) weak var rootController: UINavigationController?
    private(set) weak var headController: UIViewController?

    init(_ rootController: UINavigationController) {
        self.rootController = rootController
        self.headController = rootController.topViewController
        self.completions = [:]
    }

    // MARK: - StackRoutable

    func push(_ module: Presentable?) {
        push(module, animated: true)
    }

    func push(_ module: Presentable?, animated: Bool) {
        push(module, animated: animated, completion: nil)
    }

    func push(_ module: Presentable?, animated: Bool, completion: VoidBlock?) {
        guard let controller = extractController(from: module) else {
            return
        }

        if let completion = completion {
            completions[controller] = completion
        }
        rootController?.pushViewController(controller, animated: animated)
    }

    func popModule() {
        popModule(animated: true)
    }

    func popModule(animated: Bool) {
        popModule(animated: animated, completion: nil)
    }

    func popModule(animated: Bool, completion: VoidBlock?) {
        if let controller = rootController?.popViewController(animated: animated) {
            runCompletion(for: controller)
            completion?()
        }
    }

    func popToHead() {
        popToHead(animated: true)
    }

    func popToHead(animated: Bool) {
        if let controller = headController,
            let controllers = rootController?.popToViewController(controller, animated: animated) {
            runCompletionsChain(of: controllers)
        }
    }

    func pop(to module: Presentable?) {
        pop(to: module, animated: true)
    }

    func pop(to module: Presentable?, animated: Bool) {
        guard let controller = extractController(from: module) else {
            return
        }

        if let controllers = rootController?.popToViewController(controller, animated: animated) {
            runCompletionsChain(of: controllers)
        }
    }

    // MARK: - ModalRoutable

    func present(_ module: Presentable?) {
        modalRouter?.present(module)
    }

    func present(_ module: Presentable?, animated: Bool) {
        modalRouter?.present(module, animated: animated)
    }

    func dismissModule() {
        modalRouter?.dismissModule()
    }

    func dismissModule(animated: Bool, completion: VoidBlock?) {
        modalRouter?.dismissModule(animated: animated, completion: completion)
    }

    func prsentChild(_ module: Presentable?) -> StackRoutable? {
        return modalRouter?.prsentChild(module)
    }

    func prsentChild(_ module: Presentable?, animated: Bool) -> StackRoutable? {
        return modalRouter?.prsentChild(module, animated: animated)
    }

    // MARK: - Presentable

    func toPresent() -> UIViewController? {
        return rootController
    }

    // MARK: - Helpers

    func extractController(from module: Presentable?) -> UIViewController? {
        guard let controller = module?.toPresent() else {
            return nil
        }
        guard controller is UINavigationController == false else {
            return nil
        }
        return controller
    }

    func runCompletion(for controller: UIViewController) {
        completions[controller]?()
        completions.removeValue(forKey: controller)
    }

    func runCompletionsChain(of controllers: [UIViewController]) {
        controllers.forEach { [weak self] controller in
            self?.runCompletion(for: controller)
        }
    }
}
