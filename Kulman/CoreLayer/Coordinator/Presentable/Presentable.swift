//
//  Presentable.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit
import LeadKit

protocol Presentable: class {

    func toPresent() -> UIViewController?
}

// MARK: - Default implementation for UIViewController
extension Presentable where Self: UIViewController {

    func toPresent() -> UIViewController? {
        return self
    }
}

// MARK: - Default implementation for UIAlertController
extension UIAlertController: Presentable {
}

// MARK: - Default implementation for UINavigationController
extension UINavigationController: Presentable {
}

